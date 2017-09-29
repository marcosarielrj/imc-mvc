package mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(value = "/imcMVC")
public class ImcController extends HttpServlet {
	@Override
	protected void doGet(
			HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		//Obt�m os par�metros da requisi��o.
		String pesoString = request.getParameter("peso");
		String alturaString = request.getParameter("altura");
		
		
		//Executa a regra de neg�cio.
		if (pesoString == null || alturaString == null || pesoString.equals("") || alturaString.equals("")){
			
			String resultado =
				"Digite os dados";
		} else {
			
			pesoString = pesoString.replaceAll(",", ".");
			alturaString = alturaString.replaceAll(",", ".");
			  
			float peso = pesoString == null ? 0 : Float.parseFloat(pesoString);
			float altura = alturaString == null ? 0 : Float.parseFloat(alturaString);
			
			String resultado =
					"" + ImcModel.imc(peso,altura);
			
		}
		
		//Chama a view.
		//Mandar mensagem para o JSP mostrar.
		request.setAttribute("resultado", resultado);
		request.getRequestDispatcher("imcView.jsp").forward(request, response);
	}
}
