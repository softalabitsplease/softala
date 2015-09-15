package bean;

import java.util.Date;

public class Koulutus {
	
	private int koulutus_id;
	private String pvm;
	private String alkamisaika;
	private String paattymisaika;
	private int paikka;
	private String aihe;
	private String kuvaus;
	private int opettaja;
	
	
	
	public Koulutus() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Koulutus(int koulutus_id, String pvm, String alkamisaika,
			String paattymisaika, int paikka, String aihe, String kuvaus,
			int opettaja) {
		super();
		this.koulutus_id = koulutus_id;
		this.pvm = pvm;
		this.alkamisaika = alkamisaika;
		this.paattymisaika = paattymisaika;
		this.paikka = paikka;
		this.aihe = aihe;
		this.kuvaus = kuvaus;
		this.opettaja = opettaja;
	}


	public int getKoulutus_id() {
		return koulutus_id;
	}


	public void setKoulutus_id(int koulutus_id) {
		this.koulutus_id = koulutus_id;
	}


	public String getPvm() {
		return pvm;
	}


	public void setPvm(String pvm) {
		this.pvm = pvm;
	}


	public String getAlkamisaika() {
		return alkamisaika;
	}


	public void setAlkamisaika(String alkamisaika) {
		this.alkamisaika = alkamisaika;
	}


	public String getPaattymisaika() {
		return paattymisaika;
	}


	public void setPaattymisaika(String paattymisaika) {
		this.paattymisaika = paattymisaika;
	}


	public int getPaikka() {
		return paikka;
	}


	public void setPaikka(int paikka) {
		this.paikka = paikka;
	}


	public String getAihe() {
		return aihe;
	}


	public void setAihe(String aihe) {
		this.aihe = aihe;
	}


	public String getKuvaus() {
		return kuvaus;
	}


	public void setKuvaus(String kuvaus) {
		this.kuvaus = kuvaus;
	}


	public int getOpettaja() {
		return opettaja;
	}


	public void setOpettaja(int opettaja) {
		this.opettaja = opettaja;
	}


	@Override
	public String toString() {
		return "Koulutus [koulutus_id=" + koulutus_id + ", pvm=" + pvm
				+ ", alkamisaika=" + alkamisaika + ", paattymisaika="
				+ paattymisaika + ", paikka=" + paikka + ", aihe=" + aihe
				+ ", kuvaus=" + kuvaus + ", opettaja=" + opettaja + "]";
	}
	
	
}
