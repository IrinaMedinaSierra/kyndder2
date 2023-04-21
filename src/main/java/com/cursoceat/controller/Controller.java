package com.cursoceat.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.beans.beancontext.BeanContextServiceProviderBeanInfo;
import java.io.IOException;
import java.time.LocalDate;
import java.time.Period;
import java.util.ArrayList;
import java.util.List;

import javax.lang.model.element.NestingKind;

import org.eclipse.jdt.internal.compiler.IDebugRequestor;
import org.eclipse.jdt.internal.compiler.env.IRecordComponent;

import com.cursoceat.modell.Autorizados;
import com.cursoceat.modell.Nino;
import com.cursoceat.modell.Tutores;
import com.oracle.wls.shaded.org.apache.bcel.generic.I2F;
import com.oracle.wls.shaded.org.apache.xml.utils.SystemIDResolver;

/**
 * Servlet implementation class Controller
 */
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		/**
		 * Datos del Nino
		 */
		String nombreNino=request.getParameter("nombre"); //los valores vienen del jsp y almacena del name="nombre" su valor
		String apellidosNino=request.getParameter("apellidos");
		String fNacimiento=request.getParameter("fechaNacimiento");
		String direccionN=request.getParameter("direccion");
		String poblacionN=request.getParameter("poblacion");
		String cpN=request.getParameter("cp");
		String alergia=request.getParameter("alergias");
		String alergiaAli=request.getParameter("AlergiaAlim");
		String intolerancia=request.getParameter("intolerancias");
		String medicacion=request.getParameter("medicacion");
		String observaciones=request.getParameter("observaciones");
		/**
		 * Datos del Tutor 1
		 */
		String nombreTutor1=request.getParameter("nombreApellidoT1");
		String dniT1=request.getParameter("dniT1");
		String profesionT1=request.getParameter("profesionT1");
		//Ejemplo de un casting a entero
		//int telefono=Integer.parseInt(request.getParameter("telefonoT1"));
		String telefonoT1=request.getParameter("telefonoT1");
		String emailT1=request.getParameter("emailT1");
		String parentesco=request.getParameter("parentesco");
	
		/**
		 * Datos de todos los autorizados
		 */
	
		String autor1=request.getParameter("autor1");
		String dniAuto1=request.getParameter("dniAuto1");
		String telefonoAuto1=request.getParameter("telefonoAuto1");
		String parentAuto1=request.getParameter("parentAuto1");
		
		String errorT="";
		ArrayList<String> listaErrores=new ArrayList<>();	
		//validar fnacimiento
		//validar dni
		
		/**
		 * vaLIDO DNI
		 */
		
		if ( !validarDNI(dniAuto1) ) {
			listaErrores.add("Verifique DNI");			
		}
		
		if (!validarFN(fNacimiento)) {
			listaErrores.add("Por la fecha de nacimeinto el niño no se puede dar de alta");
		}
		
		if (nombreNino.isEmpty() || apellidosNino.isEmpty() || fNacimiento.isEmpty() || direccionN.isEmpty() 
				|| poblacionN.isEmpty() || cpN.isEmpty() || nombreTutor1.isEmpty() ||
				dniT1.isEmpty() || telefonoT1.isEmpty() || parentesco.isEmpty() || autor1.isEmpty() || dniAuto1.isEmpty() 
				|| telefonoAuto1.isEmpty() || parentAuto1.isEmpty() || !validarTel(telefonoT1) ) {
			String errorE="Hay errores en el formulario o hay campos vacios";
			request.setAttribute("error", errorE); //no se envia hasta que se despache
			request.getRequestDispatcher("index.jsp").forward(request, response);//no se muestra si tengo quien lo muestre
			
		}else {		
			request.setAttribute("apellidos", apellidosNino);
			request.getRequestDispatcher("confirmar.jsp").forward(request, response);
			
			/**
			 * aqui falta  validar que la sesion se cree cuando se pulse todo correcto
			 */
				List<Nino> miNiList=new ArrayList<Nino>(); 
				List<Tutores> tutoList=new ArrayList<Tutores>();
				List<Autorizados> autoList=new ArrayList<Autorizados>();
				
				Nino miNino=new Nino(nombreNino, apellidosNino, direccionN, poblacionN, cpN, fNacimiento, 
						alergia, alergiaAli, intolerancia, medicacion, observaciones);
				//crear la coleccion de niños en alta
				miNiList.add(miNino);
				int idNino=miNino.getIdNino();
				System.out.println("id niño: " + idNino);
				Tutores elTutor=new Tutores(idNino,nombreTutor1,dniT1,telefonoT1,profesionT1,emailT1,parentesco);
				tutoList.add(elTutor);
				Autorizados auto1=new Autorizados(idNino, autor1, dniAuto1,telefonoAuto1,parentAuto1);
				autoList.add(auto1);
				/**
				 * Datos del Tutor 2
				 */
				String nombreTutor2=request.getParameter("nombreApellidoT2");
				if (!nombreTutor2.isEmpty()) {		
				String dniT2=request.getParameter("dniT2");
				String profesionT2=request.getParameter("profesionT2");
				String telefonoT2=request.getParameter("telefonoT2");
				String emailT2=request.getParameter("emailT2");
				String parentesco2=request.getParameter("parentesco2");
				Tutores tutor2 = new Tutores( idNino, nombreTutor2,dniT2,profesionT2,telefonoT2,emailT2,parentesco2);
				tutoList.add(tutor2);
				}
			
				String autor2=request.getParameter("autor2");			
				if (!autor2.isEmpty()) {
					String dniAuto2=request.getParameter("dniAuto2");
					String telefonoAuto2=request.getParameter("telefonoAuto2");
					String parentAuto2=request.getParameter("parentAuto2");
					Autorizados auto2=new Autorizados(idNino, autor2, dniAuto2,telefonoAuto2,parentAuto2);
					autoList.add(auto2);
				}
				
				String autor3=request.getParameter("autor3");
				if (!autor3.isEmpty()) {
					String dniAuto3=request.getParameter("dniAuto3");
					String telefonoAuto3=request.getParameter("telefonoAuto3");
					String parentAuto3=request.getParameter("parentAuto3");
					Autorizados auto3=new Autorizados(idNino, autor3, dniAuto3,telefonoAuto3,parentAuto3);
					autoList.add(auto3);
				}			 
				
				
				//System.out.println(elTutor.toString());
				
				
				//sesiones para poder recuperar a información dentro de la aplicacion
				
				HttpSession sesion=request.getSession(); //crea el objeto tipo sesion
				System.out.println(sesion.getId());// mostraer el id de la sesion
				request.getSession().setAttribute("idNino", idNino);
				request.getSession().setAttribute("nombreN", nombreNino);
		       
				
				
			
		}
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
// area de validacion
	/**
	 * 
	 * @param tele
	 * @return boolean
	 * @description Validamos el telefono según formato de España
	 * 
	 */
    public boolean validarTel(String tele) {
		
		if ((!tele.startsWith("9") && !tele.startsWith("6") && !tele.startsWith("7") ) || tele.length()!=9 )	{
			return false;	
		}else {
			return true;
		}
	}
    
    
    /**
     * 
     * @param fNacimiento
     * @return boolean
     * @description Validamos si el fecha nacimiento es de 6 años menos (el niño no puede tener mas de 6 años)
     * 
     */
    public boolean validarFN(String fNacimiento) {
    	LocalDate fechaN=LocalDate.parse(fNacimiento);
    	int aniosNino=fechaN.getYear();
    	int anioActual=LocalDate.now().getYear();
     	if ((anioActual-aniosNino)>6  ||  anioActual+1<aniosNino)
    	return false;
       	else 
       	return true;
    }   
    
   public boolean validarDNI(String dNI) {
	   String letra="TRWAGMYFPDXBNJZSQVHLCKE";
	   // posicion inicial, longitud 
	   String intDni=dNI.substring(0,8); // dividimos el dni: aqui las primeras 8 posiciones
	   try { //intentamos hacer las operaciones
	   //esta linea puede dar error, y programador tiene que saber controlar ese posible error
	   int dNIEntero=Integer.parseInt(intDni)%23; // convertimos esas 8 posiciones a entero y sacamos el modulo
	   char letraDni= dNI.toUpperCase().charAt(8); // convertimos a tipo char la posicion 9 que debe ser la letra y en may
	   char letraCorrecta=letra.charAt(dNIEntero); // me trae la letra correcta segun el algoritmo de la policia
	   /**
	    * condicional para
	    * 1. el string de dni sea igual a 9 posiciones
	    * 2. que la letra introducida (letraDni) sea igual a letra del algoritmo de la policia (letraCorrecta)	    * 
	    */
	   if (dNI.length()==9 && letraDni==letraCorrecta) {
		   return true;
	   }else {
		   return false;
	   }
	   
	   }catch (Exception e) { //capturamos el error
		return false;	   
	   }finally {
		   //esta vacio
	   }
}

   /**
    * 
    * @param texto
    * @return el texto con la primera letra en mayuscula
    * @descripcion metodo para pasar la primera letra a mayuscula de cualquier texto
    */
   public String  pasarPmayuscula(String texto) {
	   texto=texto.toLowerCase(); //paso todo el texto a minuscula
	   String [] arrayTexto=texto.split(" ");// si es mas de una palabra la separamos en una array
	   String temp=""; //creo la variable que se formara por cada interaccion del bucle que recorre el array
	   for (int i=0; i<arrayTexto.length;i++) { //recorremos el array
		   arrayTexto[i]=arrayTexto[i].substring(0,1).toUpperCase()+arrayTexto[i].substring(1); //pasamos la primera letra de cada palabra en mayus
		   temp+=arrayTexto[i]+" "; //lo acumulamos en temp
	   }
	return temp.trim();//enviamos temp ya formateada y quitando espacios del principio y final
}

}