package com.cursoceat.modell;



public class Nino {
	static  int id; //todos los ninos
	private int idNino; //*id de un objeto niño que se cree
	private String nombreNino;
	private String apellidoNino;
	private String direccionNino;
	private String poblacionNino;
	private String cpNino;
	private String fechaNacimiento;
	private String alergias;
	private String alergiasAli;
	private String intolerancia;
	private String medicacion;
	private String observaciones;
	
	public Nino(String nombreNino, String apellidoNino, String direccionNino, String poblacionNino, String cpNino,
			String fechaNacimiento, String alergias, String alergiasAli, String intolerancia, String medicacion,
			String observaciones) {
		this.nombreNino = nombreNino;
		this.apellidoNino = apellidoNino;
		this.direccionNino = direccionNino;
		this.poblacionNino = poblacionNino;
		this.cpNino = cpNino;
		this.fechaNacimiento = fechaNacimiento;
		this.alergias = alergias;
		this.alergiasAli = alergiasAli;
		this.intolerancia = intolerancia;
		this.medicacion = medicacion;
		this.observaciones = observaciones;
		this.idNino=++id;
	}

	public Nino() {
		this.idNino=++id;
	}

	public String getNombreNino() {
		return nombreNino;
	}

	public void setNombreNino(String nombreNino) {
		this.nombreNino = nombreNino;
	}

	public String getApellidoNino() {
		return apellidoNino;
	}

	public void setApellidoNino(String apellidoNino) {
		this.apellidoNino = apellidoNino;
	}

	public String getDireccionNino() {
		return direccionNino;
	}

	public void setDireccionNino(String direccionNino) {
		this.direccionNino = direccionNino;
	}

	public String getPoblacionNino() {
		return poblacionNino;
	}

	public void setPoblacionNino(String poblacionNino) {
		this.poblacionNino = poblacionNino;
	}

	public String getCpNino() {
		return cpNino;
	}

	public void setCpNino(String cpNino) {
		this.cpNino = cpNino;
	}

	public String getFechaNacimiento() {
		return fechaNacimiento;
	}

	public void setFechaNacimiento(String fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}

	public String getAlergias() {
		return alergias;
	}

	public void setAlergias(String alergias) {
		this.alergias = alergias;
	}

	public String getAlergiasAli() {
		return alergiasAli;
	}

	public void setAlergiasAli(String alergiasAli) {
		this.alergiasAli = alergiasAli;
	}

	public String getIntolerancia() {
		return intolerancia;
	}

	public void setIntolerancia(String intolerancia) {
		this.intolerancia = intolerancia;
	}

	public String getMedicacion() {
		return medicacion;
	}

	public void setMedicacion(String medicacion) {
		this.medicacion = medicacion;
	}

	public String getObservaciones() {
		return observaciones;
	}

	public void setObservaciones(String observaciones) {
		this.observaciones = observaciones;
	}

	public static int getId() {
		return id;
	}

	public int getIdNino() {
		return idNino;
	}

	@Override
	public String toString() {
		return "Nino [idNino=" + idNino + ", nombreNino=" + nombreNino + ", apellidoNino=" + apellidoNino
				+ ", direccionNino=" + direccionNino + ", poblacionNino=" + poblacionNino + ", cpNino=" + cpNino
				+ ", fechaNacimiento=" + fechaNacimiento + ", alergias=" + alergias + ", alergiasAli=" + alergiasAli
				+ ", intolerancia=" + intolerancia + ", medicacion=" + medicacion + ", observaciones=" + observaciones
				+ "]";
	}
	
}
