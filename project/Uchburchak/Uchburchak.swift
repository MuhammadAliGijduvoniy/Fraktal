import UIKit



class LineDrowingView: UIView {
    
    override func draw(_ rect: CGRect) {
        
        let contex = UIGraphicsGetCurrentContext()
        contex?.setStrokeColor(UIColor.red.cgColor)
        contex?.setLineWidth(1)
        
        drawTriange(contex: contex, mx: 200, my: 150, L: 350, step: 3)
        
        contex?.strokePath()
        
        
    }
    
    func drawTriange(contex: CGContext?, mx: CGFloat, my: CGFloat, L: CGFloat, alpha: CGFloat = 60, step: Int) {
       
        
        contex?.move(to: CGPoint(x: mx, y: my))
        
        let y: CGFloat = sin(alpha * CGFloat.pi / 180) * L
        let x: CGFloat = cos(alpha * CGFloat.pi / 180) * L
        
        
        let aPoint: CGPoint = .init(x: mx - x, y: my + y)
        contex?.addLine(to: aPoint)
        
        contex?.move(to: CGPoint(x: mx, y: my))
        
        let bPoint: CGPoint = .init(x: mx + x, y: my + y)
        contex?.addLine(to: bPoint)
        
        contex?.addLines(between: [bPoint, aPoint])
        
        contex?.strokePath()
        
        if step >= 1 {
            drawTriange(contex: contex, mx: mx, my: my, L: L / 2, step: step - 1)
            
            drawTriange(contex: contex, mx: (mx - x / 2), my: (my + y / 2), L: L / 2, step: step - 1)
            
            drawTriange(contex: contex, mx: (mx + x / 2), my: (my + y / 2), L: L / 2, step: step - 1)
        }
    }
    
    
}


