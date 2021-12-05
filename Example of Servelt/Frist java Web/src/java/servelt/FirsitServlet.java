package servelt;


import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jboss.weld.context.http.HttpRequestContext;


@WebServlet(urlPatterns = {"/FirsitServlet"})
public class FirsitServlet extends HttpServlet {

    int count = 0;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
       //String s= request.getParameter("name");
        // h=request.getSession();
        //String ss=h.getId();
       // h.setAttribute("namee","AHMED HAMDA ");
      // h.setMaxInactiveInterval(3);
     //33  h.invalidate();
       // System.out.println(ss);
        //PrintWriter out = response.getWriter();
         
       
        PrintWriter out = response.getWriter();
        out.println("<h>"+"SECSION before "+"</h>" +"<br>");  
        
        RequestDispatcher rd= request.getRequestDispatcher("TestJsp.jsp?uname="+"Ahmed");
        rd.include(request,response );
        
         //response.sendRedirect("TestJsp.jsp?uname="+"AHMED ");
         
         out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Test sertvelt</title>");
        out.println("SECSION ID  "+"<br>");  
        out.println("</head>");
        out.println("<body>");
        out.println();
       
       
       // out.println("<B>Test sertvelt</B>");

        out.println("</body>");
        out.println("</html>");
        
        
        
        
        

    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        processRequest(request, response);
       

    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
