package fr.bca.socle;

import java.io.IOException;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class ServletTest extends HttpServlet
{
    public ServletTest() {}

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    		throws ServletException, IOException
    {
        doService(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    		throws ServletException, IOException
    {
        doService(request, response);
    }

    protected void doService(HttpServletRequest request, HttpServletResponse response)
    		throws ServletException, IOException
   {
    	System.out.println("CECI EST TEST");
    	//try { Thread.sleep(200000); } catch(InterruptedException e) {logger.error(e.toString(), e);}
   }
}
