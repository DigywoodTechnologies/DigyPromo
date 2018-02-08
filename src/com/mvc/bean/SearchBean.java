package com.mvc.bean;

public class SearchBean {

	private static int SPMItemKey;
    private String SPMItemOrganisationID;
    private static String SPMItemID;
    private  static String SPMItemName;
    private String SPMItemImageFile;
    private String SPMItemDirectory;
    private String SPMItemRemarks;
    private String SPMItemStatus;
	public static int getSPMItemKey() {
		return SPMItemKey;
	}
	public static void setSPMItemKey(int sPMItemKey) {
		SPMItemKey = sPMItemKey;
	}
	public String getSPMItemOrganisationID() {
		return SPMItemOrganisationID;
	}
	public void setSPMItemOrganisationID(String sPMItemOrganisationID) {
		SPMItemOrganisationID = sPMItemOrganisationID;
	}
	public static String getSPMItemID() {
		return SPMItemID;
	}
	public void setSPMItemID(String sPMItemID) {
		SPMItemID = sPMItemID;
	}
	public String getSPMItemName() {
		return SPMItemName;
	}
	public void setSPMItemName(String sPMItemName) {
		SPMItemName = sPMItemName;
	}
	public String getSPMItemImageFile() {
		return SPMItemImageFile;
	}
	public void setSPMItemImageFile(String sPMItemImageFile) {
		SPMItemImageFile = sPMItemImageFile;
	}
	public String getSPMItemDirectory() {
		return SPMItemDirectory;
	}
	public void setSPMItemDirectory(String sPMItemDirectory) {
		SPMItemDirectory = sPMItemDirectory;
	}
	public String getSPMItemRemarks() {
		return SPMItemRemarks;
	}
	public void setSPMItemRemarks(String sPMItemRemarks) {
		SPMItemRemarks = sPMItemRemarks;
	}
	public String getSPMItemStatus() {
		return SPMItemStatus;
	}
	public void setSPMItemStatus(String sPMItemStatus) {
		SPMItemStatus = sPMItemStatus;
	}


}
