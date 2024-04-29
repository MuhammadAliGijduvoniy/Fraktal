import UIKit




class LineDrowingVieww: UIView {
    
    override func draw(_ rect: CGRect) {
        
        let contex = UIGraphicsGetCurrentContext()
        
        self.drawMe(contex: contex, mx: windowWidth / 2, my: windowHeight * 0.8, R: 200, alpha: 90, step: 12)
        
        contex?.strokePath()
    }
    
    func drawMe(contex: CGContext?, mx: CGFloat, my: CGFloat, R: CGFloat, alpha: Int, step: Int) {
        
        let toY: CGFloat = R * sin((CGFloat(alpha) * CGFloat.pi)/180)
        let toX: CGFloat = R * cos((CGFloat(alpha) * CGFloat.pi)/180)
        contex?.setStrokeColor(UIColor.black.cgColor)
        
        if step > 0 {
            contex?.setLineWidth(CGFloat(step))
        }
        
        contex?.move(to: CGPoint(x: mx, y: my))
        
        contex?.addLine(to: CGPoint(x: mx + toX, y: my - toY))
        contex?.strokePath()
        
        if step >= 1 {
            drawMe(contex: contex, mx: mx + toX, my: my - toY, R: R * 0.82, alpha: alpha + 35, step: step - 1)
            drawMe(contex: contex, mx: mx + toX, my: my - toY, R: R * 0.7, alpha: alpha - 60, step: step - 1)
        }
    }
    
    
}
