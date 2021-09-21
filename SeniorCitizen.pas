unit SeniorCitizen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, NxEdit, NxCollection, Grids, DBGrids, CRGrid, DB,
  MemDS, DBAccess, MyAccess, Mask, DBCtrls, ExtCtrls, QRCtrls, QuickRpt,
  ComCtrls, AdvOfficeButtons;

type
  TSCForm = class(TForm)
    NxButton1: TNxButton;
    SCSearch: TNxEdit;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    NxButton5: TNxButton;
    NxLabel1: TNxLabel;
    NxButton6: TNxButton;
    CRDBGrid1: TCRDBGrid;
    NxButton7: TNxButton;
    SCRecordPanel: TNxHeaderPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Master: TMyQuery;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    Panel1: TPanel;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel19: TQRLabel;
    DateLabel: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    TabSheet2: TTabSheet;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRSysData3: TQRSysData;
    PeriodCovered: TQRLabel;
    QRBand2: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand3: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    SCPeriod: TMyQuery;
    NxButton10: TNxButton;
    NxHeaderPanel1: TNxHeaderPanel;
    DateFrom: TNxDatePicker;
    DateTo: TNxDatePicker;
    NxLabel2: TNxLabel;
    NxButton11: TNxButton;
    NxButton12: TNxButton;
    NxLabel3: TNxLabel;
    QRLabel9: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel6: TQRLabel;
    NxLinkLabel1: TNxLinkLabel;
    NxLinkLabel2: TNxLinkLabel;
    MasterCode: TIntegerField;
    MasterArea: TStringField;
    MasterBook: TStringField;
    MasterSequence: TStringField;
    MasterAccountNumber: TStringField;
    MasterName: TStringField;
    MasterAddress: TStringField;
    MasterRateCode: TStringField;
    MasterConsCode: TStringField;
    MasterConnCode: TStringField;
    MasterTransformer: TStringField;
    MasterMeterBrand: TStringField;
    MasterSerial: TStringField;
    MasterMultiplier: TFloatField;
    MasterNewConnectionDate: TDateField;
    MasterReconnectionDate: TDateField;
    MasterDisconnectionDate: TDateField;
    MasterPreviousReadingDate: TDateField;
    MasterPresentReadingDate: TDateField;
    MasterPreviousReadingKWH: TFloatField;
    MasterPresentReadingKWH: TFloatField;
    MasterDiff: TFloatField;
    MasterDemand: TFloatField;
    MasterFlatRateWattage: TFloatField;
    MasterFeedBackCode: TStringField;
    MasterCM: TStringField;
    MasterCMMultiplier: TFloatField;
    MasterCMPreviousReadingKWH: TFloatField;
    MasterCMPresentReadingKWH: TFloatField;
    MasterCMKilowattHour: TFloatField;
    MasterCMDemand: TFloatField;
    MasterKilowattHour: TFloatField;
    MasterKilowattUsed: TFloatField;
    MasterGenSysCharge: TFloatField;
    MasterHostCommCharge: TFloatField;
    MasterForexCharge: TFloatField;
    MasterTCDemandCharge: TFloatField;
    MasterTCTransSystemCharge: TFloatField;
    MasterSystemLossCharge: TFloatField;
    MasterDCDemandCharge: TFloatField;
    MasterDCDistributionCharge: TFloatField;
    MasterSCRetCustCharge: TFloatField;
    MasterSCSupplySysCharge: TFloatField;
    MasterMCRetailCustCharge: TFloatField;
    MasterMCSystemCharge: TFloatField;
    MasterUCNPCStrandedDebts: TFloatField;
    MasterUCNPCStrandedContCost: TFloatField;
    MasterUCDUStrandedContCost: TFloatField;
    MasterUCME: TFloatField;
    MasterUCEqTaxesAndRoyalties: TFloatField;
    MasterUCEC: TFloatField;
    MasterUCCrossSubRemoval: TFloatField;
    MasterICCrossSubsidyCharge: TFloatField;
    MasterPowerActRateRed: TFloatField;
    MasterLifelineDiscSubs: TFloatField;
    MasterLoanCondo: TFloatField;
    MasterTransformerRental: TFloatField;
    MasterOCCode1: TStringField;
    MasterOCAmount1: TFloatField;
    MasterOCMo1: TFloatField;
    MasterOCTotal1: TFloatField;
    MasterOCCode2: TStringField;
    MasterOCAmount2: TFloatField;
    MasterOCMo2: TFloatField;
    MasterOCTotal2: TFloatField;
    MasterOCCode3: TStringField;
    MasterOCAmount3: TFloatField;
    MasterOCMo3: TFloatField;
    MasterOCTotal3: TFloatField;
    MasterTotalBill: TFloatField;
    MasterBillNumber: TStringField;
    MasterOEBRNumber: TStringField;
    MasterBillMonth: TStringField;
    MasterDeleteRemarks: TStringField;
    MasterPoleNumber: TStringField;
    MasterFeederNumber: TStringField;
    MasterXFormerQty: TIntegerField;
    MasterXFormerKVA: TStringField;
    MasterAge30: TFloatField;
    MasterAge60: TFloatField;
    MasterAge90: TFloatField;
    MasterAge120: TFloatField;
    MasterAgeOver120: TFloatField;
    MasterAgeTotal: TFloatField;
    MasterTotalPayments: TFloatField;
    MasterARBalance: TFloatField;
    MasterLCCustMo: TFloatField;
    MasterPrevYearAdjPowerCost: TFloatField;
    MasterSysLossUnderRecov: TFloatField;
    MasterVATDisc: TFloatField;
    MasterVATDiscAmt: TFloatField;
    MasterVATDistDiscAmt: TFloatField;
    MasterVATGenCoDiscAmt: TFloatField;
    MasterVATTransCoDiscAmt: TFloatField;
    MasterVATSystemLossDiscAmt: TFloatField;
    MasterVATDist: TFloatField;
    MasterVATGenCO: TFloatField;
    MasterVATTransCO: TFloatField;
    MasterVATSystemLossGenCO: TFloatField;
    MasterVATSystemLossTransCO: TFloatField;
    MasterVAT: TFloatField;
    MasterDiffBillPerKwhr: TFloatField;
    MasterDiffBillPerKW: TFloatField;
    MasterDiffBillPerCust: TFloatField;
    MasterMCC: TFloatField;
    MasterPKVROebrNumber: TStringField;
    MasterPKVRBillMonth: TStringField;
    MasterPKVRAmount: TFloatField;
    MasterSCDisc: TFloatField;
    MasterWRateCode: TStringField;
    SCPeriodidSCDisc: TLargeintField;
    SCPeriodSCode: TFloatField;
    SCPeriodArea: TStringField;
    SCPeriodBook: TStringField;
    SCPeriodSequence: TStringField;
    SCPeriodAccountNumber: TStringField;
    SCPeriodBillingName: TStringField;
    SCPeriodName: TStringField;
    SCPeriodBDay: TDateField;
    SCPeriodCPNo: TStringField;
    SCPeriodSCIDNo: TStringField;
    SCPeriodDateApplied: TDateField;
    SCPeriodExpirationDate: TDateField;
    SCPeriodRemarks: TStringField;
    SCPeriodAddress: TStringField;
    QRSysData2: TQRSysData;
    DBEdit14: TDBEdit;
    Label14: TLabel;
    NxLinkLabel3: TNxLinkLabel;
    ViewExpiredSC: TAdvOfficeCheckBox;
    procedure FormShow(Sender: TObject);
    procedure NxButton6Click(Sender: TObject);
    procedure NxButton7Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxButton4Click(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure NxButton10Click(Sender: TObject);
    procedure NxButton12Click(Sender: TObject);
    procedure NxButton11Click(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure NxLinkLabel2Click(Sender: TObject);
    procedure NxLinkLabel3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SCForm: TSCForm;

implementation

uses DateUtils, Data;

{$R *.dfm}

procedure TSCForm.FormShow(Sender: TObject);
begin
  With ISDData do
    begin
      SC.Close;
      SC.ParamByName('name').Text := '%';
      SC.Open;
    end;
end;

procedure TSCForm.NxButton6Click(Sender: TObject);
var
today : Tdatetime;
begin
today := now;
  With ISDData do
    begin
      SC.Close;
      SC.ParamByName('name').Text := '%'+SCSearch.Text+'%';
      SC.Open;

  if ViewExpiredSC.Checked = true then
    begin
       SC.Filtered := false;
       //complaints.FilterSQL := ' isuedBy like '+quotedstr('%');
       SC.FilterSQL := ' ExpirationDate  ='+ quotedstr(DateToStr(now));
       SC.Filtered := true;
    end;
    end;

end;

procedure TSCForm.NxButton7Click(Sender: TObject);
begin
  With ISDData do
    begin
      SC.Filtered := false;
      SC.Close;
      SC.ParamByName('name').Text := '%';
      SC.Open;
    end;
end;

procedure TSCForm.NxButton1Click(Sender: TObject);
begin
  NxButton1.Enabled := False;
  NxButton2.Enabled := False;
  NxButton3.Enabled := False;
  NxButton4.Enabled := False;
  NxButton5.Enabled := False;
  NxButton6.Enabled := False;
  NxButton7.Enabled := False;
  NxButton10.Enabled := False;
  With ISDData do
    begin
     SCRecordPanel.Left     := 141;
     SCRecordPanel.Top      := 27;
     SCRecordPanel.BringToFront;
     SCRecordPanel.Visible  := True;

     DBEdit1.SetFocus;
     SC.Append;
     SCDateApplied.AsDateTime  := Now;
     SCDateApplied.EditMask    := '!99/99/0000;1;_';
     SCExpirationDate.EditMask := '!99/99/0000;1;_';
     SCBDay.EditMask           := '!99/99/0000;1;_';
    end;

end;

procedure TSCForm.NxButton2Click(Sender: TObject);
begin
  NxButton1.Enabled := False;
  NxButton2.Enabled := False;
  NxButton3.Enabled := False;
  NxButton4.Enabled := False;
  NxButton5.Enabled := False;
  NxButton6.Enabled := False;
  NxButton7.Enabled := False;
  NxButton10.Enabled := False;

  With ISDData do
    begin

     SCRecordPanel.Left     := 141;
     SCRecordPanel.Top      := 27;
     SCRecordPanel.BringToFront;
     SCRecordPanel.Visible  := True;

     DBEdit11.SetFocus;
     SC.Edit;
     SCDateApplied.EditMask    := '!99/99/0000;1;_';
     SCExpirationDate.EditMask := '!99/99/0000;1;_';
     SCBDay.EditMask           := '!99/99/0000;1;_';
    end;

end;

procedure TSCForm.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TSCForm.NxButton3Click(Sender: TObject);
begin
  if (MessageDlg('Delete record... Confirm delete', mtConfirmation, [mbOK, mbCancel], 0) = mrCancel) then exit;

  ISDData.SC.Delete;
 
end;

procedure TSCForm.NxButton5Click(Sender: TObject);
begin
  Close;
end;

procedure TSCForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Master.Close;
   ISDData.SC.Close;
   Action := caFree;
   SCForm := Nil;
end;

procedure TSCForm.NxButton4Click(Sender: TObject);
begin
  DateLabel.Caption := 'AS OF '+FormatDateTime('MMMM, YYYY',Now);
  QuickRep1.Preview;
end;

procedure TSCForm.DBEdit10Exit(Sender: TObject);
begin
  If ISDData.SCExpirationDate.IsNull then
     ISDData.SCExpirationDate.AsDateTime := IncYear(ISDData.SCDateApplied.AsDateTime,1);

end;

procedure TSCForm.NxButton10Click(Sender: TObject);
begin
  NxHeaderPanel1.Left    := 168;
  NxHeaderPanel1.Top     := 132;
  NxHeaderPanel1.BringToFront;
  NxHeaderPanel1.Visible := True;
  DateFrom.AsDateTime    := StartOfTheMonth(now);
  DateTo.AsDateTime      := EndOfTheMonth(now);
  DateFrom.SetFocus;
end;

procedure TSCForm.NxButton12Click(Sender: TObject);
begin
  NxHeaderPanel1.Visible := False;
  SCPeriod.Close;
end;

procedure TSCForm.NxButton11Click(Sender: TObject);
begin

  SCPeriod.Close;
  SCPeriod.ParamByName('DateFrom').AsDate  := DateFrom.Date;
  SCPeriod.ParamByName('DateTo').AsDate    := DateTo.Date;
  SCPeriod.Open;
  PeriodCovered.Caption := 'PERIOD COVERED '+DateFrom.AsString+' - '+DateTo.AsString;
  QuickRep2.Preview;
end;

procedure TSCForm.NxLinkLabel1Click(Sender: TObject);
begin

  try
   ISDData.SC.Post;
  except
    on E: Exception do
      begin
        MessageDlg(E.Message+' That ID number is already assigned', mtError, [mbOK], 0);
        DBEdit9.SetFocus;
        exit;
      end;
  end;

  SCRecordPanel.Visible := False;
  NxButton1.Enabled := True;
  NxButton2.Enabled := True;
  NxButton3.Enabled := True;
  NxButton4.Enabled := True;
  NxButton5.Enabled := True;
  NxButton6.Enabled := True;
  NxButton7.Enabled := True;
  NxButton10.Enabled := True;
  NxButton1.SetFocus;
end;

procedure TSCForm.NxLinkLabel2Click(Sender: TObject);
begin
  SCRecordPanel.Visible := False;
  NxButton1.Enabled := True;
  NxButton2.Enabled := True;
  NxButton3.Enabled := True;
  NxButton4.Enabled := True;
  NxButton5.Enabled := True;
  NxButton6.Enabled := True;
  NxButton7.Enabled := True;
  NxButton10.Enabled := True;
  NxButton1.SetFocus;
  ISDData.SC.Cancel;
end;

procedure TSCForm.NxLinkLabel3Click(Sender: TObject);
begin
  If Trim(DBEdit1.Text) = '' then
    begin
       MessageDlg('Please enter an account number...', mtError, [mbOK], 0);
       DBEdit1.SetFocus;
       exit;
    end;
    
  Master.Close;
  Master.ParamByName('AccountNumber').Text := DBEdit1.Text;
  Master.Open;

  If Master.IsEmpty then
    begin
      MessageDlg('That account is not on file...', mtError, [mbOK], 0);
      Master.Close;
      DBEdit1.SetFocus;
      Exit;
    end;

  With ISDData do
    begin
      SCSCode.Text       := MasterCode.Text;
      SCArea.Text        := MasterArea.Text;
      SCBook.Text        := MasterBook.Text;
      SCSequence.Text    := MasterSequence.Text;
      SCBillingName.Text := MasterName.Text;
      SCName.Text        := MasterName.Text;
      SCAddress.Text     := MasterAddress.Text;
    end;
    DBEdit7.SetFocus;
end;

end.
