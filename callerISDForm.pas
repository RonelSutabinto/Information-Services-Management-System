unit callerISDForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, MyAccess,
  AdvSmoothButton, AdvSmoothLabel, Vcl.ExtCtrls, AdvPanel, Vcl.StdCtrls,
  AdvEdit, advlued, NxCollection;

type
  Tcaller_Frm = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvSmoothLabel1: TAdvSmoothLabel;
    AdvSmoothLabel2: TAdvSmoothLabel;
    cntrServe_lb: TAdvSmoothLabel;
    numberServe_lb: TAdvSmoothLabel;
    cntr_RC_lb: TAdvSmoothLabel;
    cntr_SC_lb: TAdvSmoothLabel;
    cntr_C_lb: TAdvSmoothLabel;
    AdvPanel2: TAdvPanel;
    number_lb2: TAdvSmoothLabel;
    AdvSmoothButton13: TAdvSmoothButton;
    AdvSmoothButton26: TAdvSmoothButton;
    queCntrQ: TMyQuery;
    manageOutQ: TMyQuery;
    manageOutQentry: TIntegerField;
    manageOutQtype: TStringField;
    manageOutQnumber: TIntegerField;
    manageOutQdate: TDateField;
    manageOutQtime: TTimeField;
    manageOutQcode: TStringField;
    manageOutQqueid: TIntegerField;
    manageOutQgroupno: TIntegerField;
    manageOutQexecutedby: TStringField;
    manageOutQDepartment: TStringField;
    manageOutQuserid: TStringField;
    manageOutQcounter: TStringField;
    manageOutQnumber_c: TStringField;
    insertMngoutQ: TMyQuery;
    queCall_Q: TMyQuery;
    queCall_QqueID: TIntegerField;
    queCall_Qtype: TStringField;
    queCall_Qnumber: TIntegerField;
    queCall_Qdate: TDateField;
    queCall_Qtime: TTimeField;
    queCall_Qcode: TStringField;
    queCall_Qgroupno: TIntegerField;
    deleteQueQ: TMyQuery;
    updateCallBeepQ: TMyQuery;
    queCntrQnewappC: TLargeintField;
    queCntrQccomplaintC: TLargeintField;
    queCntrQrecodescoC: TLargeintField;
    queCntrQflg: TStringField;
    AdvSmoothButton25: TAdvSmoothButton;
    queCall_Qpri: TLargeintField;
    queCall_Quser: TStringField;
    beepCall_Q: TMyQuery;
    beepCall_Qentry: TIntegerField;
    beepCall_Qtype: TStringField;
    beepCall_Qnumber: TIntegerField;
    beepCall_Qdate: TDateField;
    beepCall_Qtime: TTimeField;
    beepCall_Qcode: TStringField;
    beepCall_Qqueid: TIntegerField;
    beepCall_Qgroupno: TIntegerField;
    beepCall_Qexecutedby: TStringField;
    beepCall_QDepartment: TStringField;
    beepCall_Quserid: TStringField;
    beepCall_Qcounter: TStringField;
    beepCall_Qisbeep: TBooleanField;
    beepCall_Qnumber_c: TStringField;
    AdvSmoothButton1: TAdvSmoothButton;
    queCall_QidIn: TIntegerField;
    AdvPanel3: TAdvPanel;
    Label1: TLabel;
    Timer1: TTimer;
    AdvSmoothButton30: TAdvSmoothButton;
    AdvSmoothButton29: TAdvSmoothButton;
    AdvPanel4: TAdvPanel;
    AdvSmoothLabel3: TAdvSmoothLabel;
    AdvSmoothLabel4: TAdvSmoothLabel;
    payorsName_TF: TAdvLUEdit;
    contact_TF: TAdvLUEdit;
    AdvSmoothButton6: TAdvSmoothButton;
    cnter_TF: TAdvLUEdit;
    quedate_TF: TAdvLUEdit;
    idin_tf: TAdvLUEdit;
    ifregQ: TMyQuery;
    manageinQ: TMyQuery;
    insertqueregQ: TMyQuery;
    checkdateQ: TMyQuery;
    manageOutQidIn: TIntegerField;
    AdvSmoothLabel5: TAdvSmoothLabel;
    address_tf: TAdvLUEdit;
    Label3: TLabel;
    Label2: TLabel;
    priorityno_lbl: TAdvSmoothLabel;
    updateContacttracingQ: TMyQuery;
    insertctracingnopriorityQ: TMyQuery;
    NxLinkLabel5: TNxLinkLabel;
    NxLinkLabel1: TNxLinkLabel;
    procedure FormShow(Sender: TObject);
     procedure callNumber( grpNo: Integer; type_s:String);
    procedure AdvSmoothButton29Click(Sender: TObject);
    procedure AdvSmoothButton30Click(Sender: TObject);
    procedure AdvSmoothButton25Click(Sender: TObject);
    procedure AdvSmoothButton26Click(Sender: TObject);
    procedure AdvSmoothButton13Click(Sender: TObject);
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure AdvSmoothButton6Click(Sender: TObject);
    procedure payorsName_TFKeyPress(Sender: TObject; var Key: Char);
    procedure contact_TFKeyPress(Sender: TObject; var Key: Char);
    procedure address_tfKeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel5Click(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
    //procedure AdvSmoothButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     addContact   : Boolean;
     idquedetails : Integer;
     nopriority   : Boolean;
  end;

var
  caller_Frm: Tcaller_Frm;

implementation

{$R *.dfm}

uses Data, FPISDIntro, contacttracinghistoryFrm;

procedure Tcaller_Frm.FormShow(Sender: TObject);
begin
  queCntrQ.Close;
  queCntrQ.ParamByName('user').Text := ISDData.userQueQentryUser.Text;
  queCntrQ.Open;

  manageOutQ.Close;
  manageOutQ.Open;

  cntrServe_lb.Caption.Text   := manageOutQcounter.Text;
  numberServe_lb.Caption.Text := manageOutQnumber_c.Text;

  cntr_RC_lb.Caption.Text     := queCntrQnewappC.Text;
  cntr_SC_lb.Caption.Text     := queCntrQccomplaintC.Text;
  cntr_C_lb.Caption.Text      := queCntrQrecodescoC.Text
end;
 procedure Tcaller_Frm.NxLinkLabel1Click(Sender: TObject);
begin
  payorsName_TF.Text          := '';
  contact_TF.Text             := '';
  address_tf.Text             := '';
  priorityno_lbl.Caption.Text := '0';
  nopriority                  := true;
  AdvPanel4.Left              := 17;
  AdvPanel4.top               := 55;
  AdvPanel1.Enabled           := false;
  AdvPanel4.Visible           := true;
  addContact                  := true;
  payorsName_TF.SetFocus;
end;

procedure Tcaller_Frm.NxLinkLabel5Click(Sender: TObject);
begin
if not assigned(contacttracingFrm) then
  contacttracingFrm := TcontacttracingFrm.Create(Application);

  with contacttracingFrm do
  begin
      cntcthistoryQ.Close;
      cntcthistoryQ.ParamByName('userid').Text   :=  ISDData.UsersUserName.Text;
      cntcthistoryQ.ParamByName('queno').Text    := '%';
      cntcthistoryQ.ParamByName('name').Text     := '%';
      cntcthistoryQ.ParamByName('fromdate').Text := FormatDateTime('YYYY-MM-DD', now);
      cntcthistoryQ.ParamByName('todate').Text   := FormatDateTime('YYYY-MM-DD', now);
      cntcthistoryQ.Open;

      userid := ISDData.UsersUserName.Text;
      showModal;
  end;

end;

procedure Tcaller_Frm.payorsName_TFKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = #13 Then
 Begin
   contact_TF.SetFocus;
 end;

end;

procedure Tcaller_Frm.Timer1Timer(Sender: TObject);
begin
    AdvPanel3.Visible := false;

    if(Not checkdateQ.IsEmpty) then
    begin
      manageinQ.Close;
      manageinQ.ParamByName('cntr').Text := cnter_TF.Text;
      manageinQ.ParamByName('idin').Text := manageOutQidIn.Text;
      manageinQ.Open;

      if not (manageinQ.IsEmpty) then
      begin
        quedate_TF.Text := FormatDateTime('YYYY-MM-DD',manageinQ.FieldByName('date').AsDateTime)+ ' '+
                           FormatDateTime('hh:mm:ss', manageinQ.FieldByName('time').AsDateTime);
      end;

      AdvPanel4.Left := 17;
      AdvPanel4.Top  := 55;
      AdvPanel4.Visible := true;

      ifregQ.Close;
      ifregQ.ParamByName('idin').Text := idin_tf.Text;
      ifregQ.ParamByName('date').Text := FormatDateTime('YYYY-MM-DD',now);
      ifregQ.Open;
      if (Not ifregQ.IsEmpty) then
      begin
        payorsName_TF.Text := ifregQ.FieldByName('clientsName').Text;
        contact_TF.Text    := ifregQ.FieldByName('contactno').Text;
      end
      else
      begin
        payorsName_TF.Text := '';
        contact_TF.Text    := '';
        address_tf.Text    := '';
      end;

      payorsName_TF.SetFocus;
    end
    else
    begin
      AdvPanel1.Enabled := true;
    end;
    //========================================

    timer1.Enabled := false;
end;

procedure Tcaller_Frm.address_tfKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 Then
 Begin
   AdvSmoothButton6.SetFocus;
 end;
end;

procedure Tcaller_Frm.AdvSmoothButton13Click(Sender: TObject);
begin
  close;
end;

procedure Tcaller_Frm.AdvSmoothButton1Click(Sender: TObject);
begin
  queCntrQ.Close;
  queCntrQ.ParamByName('user').Text := ISDData.userQueQentryUser.Text;
  queCntrQ.Open;

  manageOutQ.Close;
  manageOutQ.Open;

  cntrServe_lb.Caption.Text   := manageOutQcounter.Text;
  numberServe_lb.Caption.Text := manageOutQnumber_c.Text;

  cntr_RC_lb.Caption.Text     := queCntrQnewappC.Text;
  cntr_SC_lb.Caption.Text     := queCntrQccomplaintC.Text;
  cntr_C_lb.Caption.Text      := queCntrQrecodescoC.Text
end;

procedure Tcaller_Frm.AdvSmoothButton25Click(Sender: TObject);
begin
   callNumber(1,'NA');
end;

procedure Tcaller_Frm.AdvSmoothButton26Click(Sender: TObject);
begin
  beepCall_Q.Close;
  beepCall_Q.ParamByName('userid').Text   := ISDData.userQueQuserID.Text;
  beepCall_Q.ParamByName('name').Text     := ISDData.userQueQName.Text;
  beepCall_Q.ParamByName('counter').Text  := 'ISD '+ISDData.userQueQnumber.Text;
  beepCall_Q.Open;

  updateCallBeepQ.ParamByName('type').Text        := beepCall_Qtype.Text;
  updateCallBeepQ.ParamByName('number').AsInteger := beepCall_Qnumber.AsInteger;
  updateCallBeepQ.ParamByName('counter').Text     := 'ISD '+ISDData.userQueQnumber.Text;
  updateCallBeepQ.Execute;
end;

procedure Tcaller_Frm.AdvSmoothButton29Click(Sender: TObject);
begin
  callNumber(1,'CC');
end;

procedure Tcaller_Frm.AdvSmoothButton30Click(Sender: TObject);
begin
  callNumber(1,'RD');
end;

procedure Tcaller_Frm.AdvSmoothButton6Click(Sender: TObject);
begin
  if((uppercase(payorsName_TF.Text)<>'N/A') OR (uppercase(contact_TF.Text)<>'N/A') ) then
  begin
    if((Length(payorsName_TF.Text)<6 ) AND (uppercase(payorsName_TF.Text)<>'N/A')) then
    begin
      MessageDlg('Invalid complainant''s name entry..', mtError, [mbOK], 0);
      payorsName_TF.SetFocus;
      exit;
    end;

    if((Length(contact_TF.Text)<6 ) AND (uppercase(contact_TF.Text)<>'N/A')) then
    begin
      MessageDlg('Invalid contact number entry..', mtError, [mbOK], 0);
      contact_TF.SetFocus;
      exit;
    end;

    try
      if((StrToInt64(contact_TF.Text)<0 ) AND  (uppercase(contact_TF.Text)<>'N/A'))then
      begin
        MessageDlg('Invalid contact number entry..', mtError, [mbOK], 0);
        contact_TF.SetFocus;
        exit;
      end;
    except
      if (uppercase(contact_TF.Text)<>'N/A') then
      begin
        MessageDlg('Invalid contact number entry..', mtError, [mbOK], 0);
        contact_TF.SetFocus;
        exit;
      end;
    end;

  end;

  if(addContact) then
  begin
    if(nopriority) then
    begin
      insertctracingnopriorityQ.ParamByName('userid').Text      := ISDData.UsersUserName.Text;
      insertctracingnopriorityQ.ParamByName('callername').Text  := ISDData.UsersUserID.Text;
      insertctracingnopriorityQ.ParamByName('clientsname').Text := payorsName_TF.Text;
      insertctracingnopriorityQ.ParamByName('contactno').Text   := contact_TF.Text;
      insertctracingnopriorityQ.ParamByName('address').Text     := address_tf.Text;
      insertctracingnopriorityQ.Execute;
    end
    else
    begin
      insertqueregQ.ParamByName('userid').Text      := ISDData.UsersUserName.Text;
      insertqueregQ.ParamByName('callername').Text  := ISDData.UsersUserID.Text;
      insertqueregQ.ParamByName('quedate').Text     := quedate_TF.Text;
      insertqueregQ.ParamByName('clientsname').Text := payorsName_TF.Text;
      insertqueregQ.ParamByName('contactno').Text   := contact_TF.Text;
      insertqueregQ.ParamByName('queno').Text       := cnter_TF.Text;
      insertqueregQ.ParamByName('idin').Text        := idin_tf.Text;
      insertqueregQ.ParamByName('address').Text     := address_tf.Text;
      insertqueregQ.Execute;
    end;
  end
  else
  begin
    updateContacttracingQ.ParamByName('name').Text              := payorsName_TF.Text;
    updateContacttracingQ.ParamByName('contactno').Text         := contact_TF.Text;
    updateContacttracingQ.ParamByName('address').Text           := address_tf.Text;
    updateContacttracingQ.ParamByName('idquedetails').AsInteger := idquedetails;
    updateContacttracingQ.ParamByName('userid').Text            := ISDData.UsersUserName.Text;
    updateContacttracingQ.Execute;
  end;

  AdvPanel4.Visible := false;
  AdvPanel1.Enabled := true;

{  if(Length(payorsName_TF.Text)<5 ) then
  begin
    MessageDlg('Invalid payor''s name entry..', mtError, [mbOK], 0);
    payorsName_TF.SetFocus;
    exit;
  end;

  if(Length(contact_TF.Text)<3 ) then
  begin
    MessageDlg('Invalid contact number entry..', mtError, [mbOK], 0);
    contact_TF.SetFocus;
    exit;
  end;

  insertqueregQ.ParamByName('userid').Text      := ISDData.UsersUserName.Text;
  insertqueregQ.ParamByName('callername').Text  := ISDData.UsersUserID.Text;
  insertqueregQ.ParamByName('quedate').Text     := quedate_TF.Text;
  insertqueregQ.ParamByName('clientsname').Text := payorsName_TF.Text;
  insertqueregQ.ParamByName('contactno').Text   := contact_TF.Text;
  insertqueregQ.ParamByName('queno').Text       := cnter_TF.Text;
  insertqueregQ.ParamByName('idin').Text        := idin_tf.Text;
  insertqueregQ.Execute;

  AdvPanel4.Visible := false;
  AdvPanel1.Enabled := true;      }

end;

procedure Tcaller_Frm.callNumber( grpNo: Integer; type_s:String);
var
   tmp:Integer;
begin
 tmp := grpNo;

 queCall_Q.Close;
 queCall_Q.ParamByName('groupno').AsInteger := grpNo;
 queCall_Q.ParamByName('type').Text         := type_s;
 queCall_Q.ParamByName('typePrimary').Text  := type_s;
 queCall_Q.ParamByName('user').Text         := ISDData.userQueQentryUser.Text;
 queCall_Q.Open;

   if not queCall_Q.IsEmpty then
   begin

       insertMngoutQ.ParamByName('type').Text              := queCall_Qtype.text;
       insertMngoutQ.ParamByName('number').AsInteger       := queCall_Qnumber.AsInteger;
       insertMngoutQ.ParamByName('date').AsDate            := queCall_Qdate.AsDateTime;
       insertMngoutQ.ParamByName('time').AsDateTime        := now; //queCall_Qtime.AsDateTime;
       insertMngoutQ.ParamByName('code').Text              := queCall_Qcode.Text;
       insertMngoutQ.ParamByName('queid').AsInteger        := queCall_QqueID.AsInteger;
       insertMngoutQ.ParamByName('groupno').AsInteger      := queCall_Qgroupno.AsInteger;
       insertMngoutQ.ParamByName('executedby').Text        := ISDData.userQueQName.Text;
       insertMngoutQ.ParamByName('Department').Text        := 'ISD';
       insertMngoutQ.ParamByName('userid').Text            := ISDData.userQueQuserID.Text;
       insertMngoutQ.ParamByName('counter').Text           := 'ISD '+ISDData.userQueQnumber.Text;
       insertMngoutQ.ParamByName('idIn').AsInteger         := queCall_QidIn.AsInteger;
       insertMngoutQ.Execute;


       deleteQueQ.ParamByName('queID').Text := queCall_QqueID.Text;
       deleteQueQ.Execute;

      queCntrQ.Close;
      queCntrQ.ParamByName('user').Text := ISDData.userQueQentryUser.Text;
      queCntrQ.Open;

      manageOutQ.Close;
      manageOutQ.Open;

      cntrServe_lb.Caption.Text   := manageOutQcounter.Text;
      numberServe_lb.Caption.Text := manageOutQnumber_c.Text;

      cntr_RC_lb.Caption.Text     := queCntrQnewappC.Text;
      cntr_SC_lb.Caption.Text     := queCntrQccomplaintC.Text;
      cntr_C_lb.Caption.Text      := queCntrQrecodescoC.Text;

      AdvPanel3.Left := 36;
      AdvPanel3.Top  := 150;
      AdvPanel3.Visible := true;
      AdvPanel1.Enabled := false;

      cnter_TF.Text               := manageOutQnumber_c.Text;
      idin_tf.Text                := manageOutQidIn.Text;
      priorityno_lbl.Caption.Text := manageOutQnumber_c.Text;
      nopriority                  := false;
      addContact                  := true;

      checkdateQ.Close;
      checkdateQ.Open;

      timer1.Enabled := true;
   end;
end;

procedure Tcaller_Frm.contact_TFKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = #13 Then
 Begin
   address_tf.SetFocus;
 end;
end;

end.
