unit Data;

interface

uses
  SysUtils, Classes, DB, MemDS, DBAccess, MyAccess;

type
  TISDData = class(TDataModule)
    MyConnection1: TMyConnection;
    Users: TMyQuery;
    dsUsers: TDataSource;
    Company: TMyQuery;
    dsCompany: TDataSource;
    Companycompanyname: TStringField;
    Companyaddress: TStringField;
    Companylogo: TBlobField;
    Companyfilename: TStringField;
    Companycompanyacro: TStringField;
    complaints: TMyQuery;
    dscomplaints: TDataSource;
    MemberMaster: TMyQuery;
    dsMemberMaster: TDataSource;
    MemberDetail: TMyQuery;
    MemberDetailMemberNumber: TStringField;
    MemberDetailArea: TStringField;
    MemberDetailBook: TStringField;
    MemberDetailAccountNumber: TStringField;
    MemberDetailConsumerName: TStringField;
    MemberDetailDateMeterInstalled: TDateField;
    MemberDetailMeterDeposit: TFloatField;
    MemberDetailSecurityDeposit: TFloatField;
    MemberDetailMountingFee: TFloatField;
    MemberDetailTransformerRental: TFloatField;
    MemberDetailOtherFees: TFloatField;
    MemberDetailMeterBrand: TStringField;
    MemberDetailSeral: TStringField;
    MemberDetailMemType: TStringField;
    dsMemberDetail: TDataSource;
    LoadDetail: TMyQuery;
    dsloaddetail: TDataSource;
    LoadDetailaccountnumber: TStringField;
    LoadDetaildescription: TStringField;
    LoadDetailwattage: TFloatField;
    LoadDetailhoursused: TFloatField;
    LoadDetailkilowatthour: TFloatField;
    NewConnection: TMyQuery;
    dsNewConnection: TDataSource;
    NewConnectionArea: TStringField;
    NewConnectionBook: TStringField;
    NewConnectionName: TStringField;
    NewConnectionAddress: TStringField;
    NewConnectionORNumber: TStringField;
    NewConnectionDatePaid: TDateTimeField;
    NewApplicants: TMyQuery;
    dsNewApplicants: TDataSource;
    LoadSurvey: TMyQuery;
    LoadSurveydescription: TStringField;
    LoadSurveywattage: TFloatField;
    LoadSurveyunits: TIntegerField;
    LoadSurveyhoursused: TFloatField;
    LoadSurveykilowatthour: TFloatField;
    dsLoadSurvey: TDataSource;
    MyConnection2: TMyConnection;
    ChangeMeter: TMyQuery;
    dsChangeMeter: TDataSource;
    VoterDistrct: TMyQuery;
    dsVoterDistrict: TDataSource;
    ChangeMeterCode: TFloatField;
    ChangeMeterDate: TDateField;
    ChangeMeterArea: TStringField;
    ChangeMeterBook: TStringField;
    ChangeMeterSequence: TStringField;
    ChangeMeterAccountNumber: TStringField;
    ChangeMeterName: TStringField;
    ChangeMeterLastReading: TFloatField;
    ChangeMeterOldMeterBrand: TStringField;
    ChangeMeterOldSerialNumber: TStringField;
    ChangeMeterOldMeterMult: TFloatField;
    ChangeMeterInitialReading: TFloatField;
    ChangeMeterNewMeterBrand: TStringField;
    ChangeMeterNewMeterSerial: TStringField;
    ChangeMeterNewMeterMult: TFloatField;
    ChangeMeterFeedback: TStringField;
    ChangeMeterAveCons: TFloatField;
    ChangeMeterRemarks: TStringField;
    ChangeMeterLTSerial: TStringField;
    ChangeMeterLTDate: TDateField;
    NewApplicantCharge: TMyQuery;
    dsNewApplicantCharge: TDataSource;
    AccountCode: TMyQuery;
    dsAccountCode: TDataSource;
    AccountCodeCode: TStringField;
    AccountCodeDescription: TStringField;
    NewApplicantChargedescription: TStringField;
    Recon: TMyQuery;
    dsRecon: TDataSource;
    ReconArea: TStringField;
    ReconBook: TStringField;
    ReconAccountnumber: TStringField;
    ReconName: TStringField;
    ReconAddress: TStringField;
    Reconreconnectionfee: TFloatField;
    ReconBillDeposit: TFloatField;
    ReconSurvey: TMyQuery;
    dsReconSurvey: TDataSource;
    Reconcode: TFloatField;
    ReconRemarks: TStringField;
    ReconMeterBrand: TStringField;
    ReconSerial: TStringField;
    ReconAmp: TStringField;
    ReconPhase: TStringField;
    ReconMeterType: TStringField;
    ReconMultiplier: TFloatField;
    ReconInitialReading: TFloatField;
    ReconReadingDate: TDateField;
    ReconDiscoDate: TDateField;
    ReconSurveyidrecon: TFloatField;
    ReconSurveydescription: TStringField;
    ReconSurveywattage: TFloatField;
    ReconSurveyunits: TIntegerField;
    ReconSurveyhoursused: TFloatField;
    ReconSurveykilowatthour: TFloatField;
    ReconORNumber: TStringField;
    ReconORDate: TDateField;
    Recontotalpaid: TCurrencyField;
    NewConnectionratecode: TStringField;
    NewApplicantsArea: TStringField;
    NewApplicantsBook: TStringField;
    NewApplicantsName: TStringField;
    NewApplicantsAddress: TStringField;
    NewApplicantscomember: TStringField;
    NewApplicantsratecode: TStringField;
    NewApplicantsDistrict: TStringField;
    Disco: TMyQuery;
    Discodiscodate: TDateField;
    Discocode: TFloatField;
    DiscoArea: TStringField;
    DiscoBook: TStringField;
    DiscoAccountnumber: TStringField;
    DiscoName: TStringField;
    DiscoAddress: TStringField;
    Discodiscofee: TFloatField;
    DiscoORNumber: TStringField;
    DiscoORDate: TDateField;
    dsDisco: TDataSource;
    Reconevat: TFloatField;
    Discoevat: TFloatField;
    Discototal: TCurrencyField;
    AccountCodeAmount: TFloatField;
    AccountCodeWithEVAT: TStringField;
    Signatories: TMyQuery;
    dssign: TDataSource;
    Signatoriescertifiedname: TStringField;
    Signatoriescertifiedpos: TStringField;
    Signatoriespreparedname: TStringField;
    Signatoriespreparedpos: TStringField;
    SC: TMyQuery;
    dsSC: TDataSource;
    SCSCode: TFloatField;
    SCArea: TStringField;
    SCBook: TStringField;
    SCSequence: TStringField;
    SCAccountNumber: TStringField;
    SCBillingName: TStringField;
    SCName: TStringField;
    SCBDay: TDateField;
    SCCPNo: TStringField;
    SCSCIDNo: TStringField;
    SCSpouseSCIDNo: TStringField;
    SCDateApplied: TDateField;
    SCExpirationDate: TDateField;
    SCRemarks: TStringField;
    SCAddress: TStringField;
    ReconCrew: TStringField;
    ReconDateRecon: TDateTimeField;
    Reconrecondate: TDateTimeField;
    Reconmoreremarks: TMemoField;
    Discoremarks: TMemoField;
    NewConnectionTechArea: TStringField;
    NewConnectionCrew: TStringField;
    NewConnectionAccomplished: TStringField;
    NewConnectionDateAccomplished: TDateTimeField;
    NewConnectionMeterBrand: TStringField;
    NewConnectionSerial: TStringField;
    NewConnectionRemarks: TMemoField;
    NewConnectionTransformer: TStringField;
    NewConnectionPoleNumber: TStringField;
    NewConnectionMultiplier: TFloatField;
    NewConnectionDemand: TFloatField;
    NewConnectionTransformerRental: TFloatField;
    NewConnectionAccountNumber: TStringField;
    NewConnectionInitialReading: TFloatField;
    NewConnectionFeeder: TStringField;
    NewConnectionPosted: TStringField;
    NewApplicantsORNumber: TStringField;
    NewApplicantsORDate: TDateField;
    NewApplicantsremarks: TMemoField;
    ReconTechArea: TStringField;
    ReconAccomplished: TStringField;
    ReconBatch: TStringField;
    ReconSealNumber: TStringField;
    DiscoTechArea: TStringField;
    DiscoDateAccomplished: TDateTimeField;
    DiscoCrew: TStringField;
    DiscoAccomplished: TStringField;
    DiscoBatch: TStringField;
    LoadDetailidNewApply: TLongWordField;
    LoadDetailunits: TLongWordField;
    NewConnectionSealNumber: TStringField;
    AccountCodeID: TIntegerField;
    AccountCodeExcludeCOH: TStringField;
    LoadSurveyidNewApply: TFloatField;
    NewConnectionidNewConnection: TLargeintField;
    NewConnectionidNewApply: TLargeintField;
    Reconidrecon: TLargeintField;
    Discoiddisco: TLargeintField;
    SCidSCDisc: TLargeintField;
    ReconSurveyidreconsurvey: TLargeintField;
    NewApplicantsidNewApply: TLargeintField;
    NewApplicantsidcomplaints: TFloatField;
    NewApplicantChargeidnewapplycharges: TLargeintField;
    NewApplicantChargeidnewapply: TFloatField;
    NewApplicantChargeamount: TFloatField;
    Signatoriesidcvsign: TLargeintField;
    Signatoriesverifiedname: TStringField;
    Signatoriesverifiedpos: TStringField;
    Signatoriesrecommendname: TStringField;
    Signatoriesrecommendpos: TStringField;
    Signatoriesapprovedname: TStringField;
    Signatoriesapprovedpos: TStringField;
    UsersUserPassWord: TStringField;
    UsersUserName: TStringField;
    UsersUserID: TStringField;
    UsersUserPic: TBlobField;
    UsersPosition: TStringField;
    UsersUserRestriction: TStringField;
    UsersIdUsers: TLargeintField;
    MemberMasteridmembermaster: TLargeintField;
    MemberMasterIdNewApply: TLargeintField;
    MemberMasterMunCode: TStringField;
    MemberMasterDistrictCode: TStringField;
    MemberMasterBrgyCode: TStringField;
    MemberMasterMembername: TStringField;
    MemberMasterAddress: TStringField;
    MemberMasterGender: TStringField;
    MemberMasterBirthDate: TDateField;
    MemberMasterSpouse: TStringField;
    MemberMasterMemberStatus: TStringField;
    MemberMasterMemberNumber: TStringField;
    MemberMasterIDNo: TStringField;
    MemberMasterBODResNumber: TStringField;
    MemberMasterDateApproved: TDateField;
    MemberMasterMFORNumber: TStringField;
    MemberMasterMFORDate: TDateField;
    MemberMasterDateTurnOn: TDateField;
    MemberMasterTOOrderNo: TStringField;
    MemberMasterEDAmount: TFloatField;
    MemberMasterEDOrNo: TStringField;
    MemberMasterEDDate: TDateField;
    MemberMasterMemberPic: TBlobField;
    MemberMasterSpousePic: TBlobField;
    UsersisSched: TBooleanField;
    schedUserQ: TMyQuery;
    complaintsidComplaints: TLargeintField;
    complaintsDateFiled: TDateTimeField;
    complaintsAccountNumber: TStringField;
    complaintsRoverBook: TStringField;
    complaintsConsumerName: TStringField;
    complaintsAddress: TStringField;
    complaintsTelNo: TStringField;
    complaintsComplaint: TStringField;
    complaintsActionTaken: TStringField;
    complaintsReceivedBy: TStringField;
    complaintsTimedEndorsed: TTimeField;
    complaintsStatusOfComplaint: TStringField;
    complaintsDateAccomplished: TDateTimeField;
    complaintsOthers: TStringField;
    complaintslandmark: TStringField;
    complaintswithcharge: TStringField;
    complaintsremarks: TMemoField;
    complaintsTechArea: TStringField;
    complaintsCrew: TStringField;
    complaintsAccomplished: TStringField;
    complaintsBatch: TStringField;
    complaintsORNumber: TStringField;
    complaintsORDate: TDateField;
    complaintscategory: TStringField;
    complaintstimeAccomplished: TTimeField;
    complaintsnotefiedBy: TStringField;
    complaintscategorydesc: TStringField;
    complaintsisuedBy: TStringField;
    complaintsserial: TStringField;
    complaintspolenumber: TStringField;
    countcomplaints: TMyQuery;
    dscount: TMyDataSource;
    countcomplaintsCATEGORY: TStringField;
    countcomplaintsCOUNT: TLargeintField;
    Barangay: TMyQuery;
    dsBarangay: TMyDataSource;
    Barangayidbarangay: TLargeintField;
    Barangaydistrictcode: TStringField;
    Barangaydistrict: TStringField;
    Barangaymunicipalitycode: TStringField;
    Barangaymunicipality: TStringField;
    Barangaybarangaycode: TStringField;
    Barangaybarangay: TStringField;
    Barangaysitiocode: TStringField;
    Barangaysitio: TStringField;
    Sitio: TMyQuery;
    dsSitio: TMyDataSource;
    Sitioidbarangay: TLargeintField;
    Sitiodistrictcode: TStringField;
    Sitiodistrict: TStringField;
    Sitiomunicipalitycode: TStringField;
    Sitiomunicipality: TStringField;
    Sitiobarangaycode: TStringField;
    Sitiobarangay: TStringField;
    Sitiositiocode: TStringField;
    Sitiositio: TStringField;
    VoterDistrctidVoterDistrict: TLargeintField;
    VoterDistrctMunCode: TStringField;
    VoterDistrctMunicipality: TStringField;
    VoterDistrctDistrictCode: TStringField;
    VoterDistrctDistrict: TStringField;
    Discoserial: TStringField;
    Discopolenumber: TStringField;
    Discodiscocol: TStringField;
    DiscoisuedBy: TStringField;
    DiscorequestedBy: TStringField;
    MemberMasterMemberSign: TBlobField;
    NewApplicantsConnType: TStringField;
    NewApplicantsConnTypeEndDate: TDateField;
    NewApplicantsSubsidy: TStringField;
    DeletedMember: TMyQuery;
    dsDeletedMember: TMyDataSource;
    DeletedMemberiddeletedmembermaster: TLargeintField;
    DeletedMemberidmembermaster: TLargeintField;
    DeletedMemberIdNewApply: TLargeintField;
    DeletedMemberMunCode: TStringField;
    DeletedMemberDistrictCode: TStringField;
    DeletedMemberBrgyCode: TStringField;
    DeletedMemberMembername: TStringField;
    DeletedMemberAddress: TStringField;
    DeletedMemberGender: TStringField;
    DeletedMemberBirthDate: TDateField;
    DeletedMemberSpouse: TStringField;
    DeletedMemberMemberStatus: TStringField;
    DeletedMemberMemberNumber: TStringField;
    DeletedMemberIDNo: TStringField;
    DeletedMemberBODResNumber: TStringField;
    DeletedMemberDateApproved: TDateField;
    DeletedMemberMFORNumber: TStringField;
    DeletedMemberMFORDate: TDateField;
    DeletedMemberDateTurnOn: TDateField;
    DeletedMemberTOOrderNo: TStringField;
    DeletedMemberEDAmount: TFloatField;
    DeletedMemberEDOrNo: TStringField;
    DeletedMemberEDDate: TDateField;
    DeletedMemberMemberPic: TBlobField;
    DeletedMemberSpousePic: TBlobField;
    DeletedMemberMemberSign: TBlobField;
    DeletedMemberDeletedBy: TStringField;
    DeletedMemberDeletedRemarks: TStringField;
    DeletedMemberDateDeleted: TDateTimeField;
    NewApplicantsapplydate: TDateField;
    ReconidmeterTrans: TIntegerField;
    ReconrequestedBy: TStringField;
    ReconisuedBy: TStringField;
    NewApplicantsPrincipalName: TStringField;
    NewApplicantsPrincipalAccountnumber: TStringField;
    Discolocation: TStringField;
    queServerQ: TMyConnection;
    userQueQ: TMyQuery;
    userQueQuserID: TStringField;
    userQueQname: TStringField;
    userQueQnumber: TStringField;
    userQueQuserType: TStringField;
    userQueQDate: TStringField;
    userQueQcounter: TStringField;
    userQueQentryUser: TStringField;
    procedure ReconCalcFields(DataSet: TDataSet);
    procedure DiscoCalcFields(DataSet: TDataSet);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ISDData: TISDData;

implementation

uses StrUtils, MaskUtils, ModTools;

{$R *.dfm}

procedure TISDData.ReconCalcFields(DataSet: TDataSet);
begin
  Recontotalpaid.AsCurrency := Reconreconnectionfee.AsCurrency + ReconBillDeposit.AsCurrency;
end;

procedure TISDData.DiscoCalcFields(DataSet: TDataSet);
begin
  Discototal.AsCurrency := Discodiscofee.AsCurrency + Discoevat.AsCurrency;
end;
  {
    Pendingcomplaintsreport2.sql.Add('complaint in (''MTR CHANGE'','+
                                                    '''MTR DISLOCATED'','+
                                                    '''MTR ERRATIC REGISTRATION'','+
                                                    '''MTR GLASS BROKEN'','+
                                                    '''MTR LOOSE CONNECTION'','+
                                                    '''MTR TEST'','+
                                                    '''MTR NOT RUNNING'','+
                                                    '''MTR REMOVAL'','+
                                                    '''MTR RUNNING TO FAST'','+
                                                    '''MTR RUNNING TO SLOW'','+
                                                    '''MTR RUNNING WITHOUT LOAD'','+
                                                    '''MTR STUCK UP METER'','+
                                                    '''MTR TRANSFER'','+
                                                    '''MTR BURNED'') ');

  Pendingcomplaintsreport2.sql.Add('complaint in (''SDW CHANGE/UPGRADE'','+
                                                    '''SDW CUT/BROKEN'','+
                                                    '''SDW LOOSE CONNECTION'','+
                                                    '''SDW NO CURRENT'','+
                                                    '''SDW RE-ROUTE'','+
                                                    '''SDW RECONNECTION / RETAPPING'','+
                                                    '''SDW SAGGING'','+
                                                    '''SDW TRANSFER'','+
                                                    '''SDW DISCO / RECO'') ');

    Pendingcomplaintsreport2.sql.Add('complaint in (''PSL LOOSE CONNECTION'','+
                                                    '''PSL LOOSE CONNECTION (SEVERAL)'','+
                                                    '''PSL SAGGING'','+
                                                    '''PSL CUT/BROKEN'','+
                                                    '''PSL CORRODED'','+
                                                    '''PSL CHANGE/UPGRADE'','+
                                                    '''PSL CLEARING OF VEGETATION'') ');

    Pendingcomplaintsreport2.sql.Add('complaint in (''DT BANKING'','+
                                                    '''DT REMOVAL'','+
                                                    '''DT BUSTED/DAMAGE'','+
                                                    '''DT TRANSFER'','+
                                                    '''DT REPLACE'','+
                                                    '''DT LOOSE CONNECTION'','+
                                                    '''DT NO/BROKEN EQUIPMENT GROUNDING'','+
                                                    '''DT (OWNERS) TRANSFORMER TESTING'','+
                                                    '''DT (OWNERS)  TRANSFORMER INSTALLATION'','+
                                                    '''DT (OWNERS)  TRANSFORMER REMOVAL'') ');

    Pendingcomplaintsreport2.sql.Add('complaint in (''DSP LEANING POLE'','+
                                                    '''DSP ROTTEN POLE'','+
                                                    '''DSP BROKEN POLE'','+
                                                    '''DSP TRANSFER OF POLE'','+
                                                    '''DSP RE-ROUTING OF POLE'','+
                                                    '''DSP UPGRADING OF POLE'','+
                                                    '''DSP INSTALLATION OF ADDITIONAL POLE'','+
                                                    '''DSP BROKEN / CORRODED POLE ACCESSORIES'','+
                                                    '''DSP NO / BROKEN EQUIPMENT GROUNDING'') ');

    Pendingcomplaintsreport2.sql.Add('complaint in (''INSTALLATION OF RECLOSER / BREAKER'','+
                                                    '''BROKEN INSULATOR'','+
                                                    '''DAMAGE FUSE TUBE'','+
                                                    '''DAMAGE CUT-OUT ASSEMBLY'','+
                                                    '''DAMAGE CAPACITOR BANK'','+
                                                    '''DAMAGE 15-KV DISCONNECT SWITCH'','+
                                                    '''DAMAGE SECTIONALIZER'','+
                                                    '''DAMAGE RECLOSER / BREAKER'','+
                                                    '''DAMAGE INSTRUMENT TRANSFORMERS'','+
                                                    '''DAMAGE LIGHTNING ARRESTER'') ');
   Pendingcomplaintsreport2.sql.Add('complaint in (''EXTENSION OF PRIMARY / SECONDARY LINE'','+
                                                    '''CHANGE NAME'','+
                                                    '''Others'','+
                                                    '''CERTIFICATION'') ');
  }
end.



