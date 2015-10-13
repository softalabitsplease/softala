package softala.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.KoulutusLisaysDAO;

/**
 * Servlet implementation class poistoServlet
 */
@WebServlet("/poistoServlet")
public class poistoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public poistoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		KoulutusLisaysDAO kDao = new KoulutusLisaysDAO();
		
		//Poistonappi
		String koulutusId = request.getParameter("poistaKoulutusId");
		
		try {
			if (koulutusId != null) {
				int poistaKoulutusId = Integer.parseInt(koulutusId);
				System.out.println(poistaKoulutusId);
				kDao.poista(poistaKoulutusId);
				System.out.println("Ollaan poistamassa koulutus_id:" + poistaKoulutusId);
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Virhe poistaessa");
		}finally {
			
		}
		
		response.sendRedirect("koulutukset");
		
	}

}
