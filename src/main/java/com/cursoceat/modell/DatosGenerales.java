package com.cursoceat.modell;

public class DatosGenerales {

	protected int idNino;
	protected String nombreApellidos;
	protected String dni;
	protected String telefono;
	public DatosGenerales(int idNino, String nombreApellidos, String dni, String telefono) {
		this.idNino = idNino;
		this.nombreApellidos = nombreApellidos;
		this.dni = dni;
		this.telefono = telefono;
	}
	public DatosGenerales() {
	}
	public int getIdNino() {
		return idNino;
	}
	public String getNombreApellidos() {
		return nombreApellidos;
	}
	public void setNombreApellidos(String nombreApellidos) {
		this.nombreApellidos = nombreApellidos;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	@Override
	public String toString() {
		return "DatosGenerales [idNino=" + idNino + ", nombreApellidos=" + nombreApellidos + ", dni=" + dni
				+ ", telefono=" + telefono + "]";
	}
	
	
	
}
