unit FPISDIntro;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  DsFancyButton,
  ExtCtrls,
  StdCtrls,
  NxEdit,
  NxCollection,
  NxFocus, jpeg, DB, MemDS, DBAccess, MyAccess, AdvSmoothButton;

type
  TIntroForm = class(TForm)
    LogIn: TNxLinkLabel;
    NxHeaderPanel1: TNxHeaderPanel;
    Label1: TLabel;
    Label2: TLabel;
    username_tf: TNxEdit;
    password_tf: TNxEdit;
    NxFocus1: TNxFocus;
    Image1: TImage;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Image2: TImage;
    tmpQ: TMyQuery;
    altertable: TMyQuery;
    Label4: TLabel;
    SpinEdit1: TNxSpinEdit;
    checkLogQ: TMyQuery;
    insertUserlogQ: TMyQuery;
    AdvSmoothButton1: TAdvSmoothButton;
    noLogQ: TMyQuery;
    noLogQentry: TIntegerField;
    noLogQuserID: TStringField;
    noLogQname: TStringField;
    noLogQnumber: TIntegerField;
    noLogQuserType: TStringField;
    noLogQDate: TDateTimeField;
    islogUpdateQ: TMyQuery;
    updateLogQ: TMyQuery;
    checkLogQentry: TIntegerField;
    checkLogQuserID: TStringField;
    checkLogQname: TStringField;
    checkLogQnumber: TIntegerField;
    checkLogQuserType: TStringField;
    checkLogQDate: TDateTimeField;
    chechdatevQ: TMyQuery;
    alterQ: TMyQuery;
    tableQ: TMyQuery;
    procedure FormShow(Sender: TObject);
    procedure LogInClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure username_tfKeyPress(Sender: TObject; var Key: Char);
    procedure password_tfKeyPress(Sender: TObject; var Key: Char);
    procedure DBConnect();
    procedure AdvSmoothButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IntroForm : TIntroForm;
  ApplyID   : Integer;
implementation

uses Data, FlexMenu;

{$R *.dfm}

procedure TIntroForm.FormShow(Sender: TObject);
begin
  DoubleBuffered := True;


end;

procedure TIntroForm.LogInClick(Sender: TObject);
begin
  if strtoint(SpinEdit1.Text) <=0 then
  begin
    messagedlg('Invalid counter number..',mtError,[mbOK],0);
    exit;
  end;


  DBConnect;


  //UPDATE `zanecoisd`.`version` SET `startvaliddate`='2021-01-22' WHERE `idversion`='1';
  try
    tableQ.Execute;
  except
  end;

  alterQ.Close;
  alterQ.Open;

  if alterQ.IsEmpty then
  begin
     tableQ.SQL.Clear;
     tableQ.SQL.Add('insert into versionhistory(date) values (''2021-01-23'')');//2021-03-05
     tableQ.Execute;

     tableQ.SQL.Clear;
     tableQ.SQL.Add('UPDATE `zanecoisd`.`version` SET `startvaliddate`=''2021-01-23'' WHERE `idversion`= 1');
     tableQ.Execute;

  end;

  chechdatevQ.Close;
  chechdatevQ.Open;
  if(chechdatevQ.IsEmpty) then
  begin
     MessageDlg('Please use updated ISD flexipack application...', mtError, [mbOK], 0);
     Close;
  end;

  With ISDData do
    begin
      Users.SQL.Clear;
      Users.SQL.Add('select * from users');
      Users.SQL.Add('where username = :username and userpassword = md5(:userpassword)');
      Users.ParamByName('username').Text      := username_tf.Text;
      Users.ParamByName('userPassword').Text  := password_tf.Text;
      Users.Open;

      If Users.IsEmpty then
        begin
          MessageDlg('Username and password invalid.....', mtError, [mbOK], 0);
          username_tf.SetFocus;
          Users.Close;
          exit;
        end;

       //===========================================
       //===========================================
       checkLogQ.Close;
       checkLogQ.ParamByName('ID').Text     := UsersUserName.Text;
       checkLogQ.ParamByName('type').Text   := 'ISD';
       checkLogQ.ParamByName('number').Text := SpinEdit1.Text;
       checkLogQ.Open;

       if not checkLogQ.IsEmpty then
       begin
         MessageDlg('That Counter Number is already in use by '+checkLogQuserID.Text+'...'+#13+#10+'Please select another counter number', mtError, [mbOK], 0);
         SpinEdit1.SetFocus;
         exit;
       end;

    if strtoint(SpinEdit1.Text)<=0 then
    begin
      MessageDlg('Invalid Counter Number entry...', mtError, [mbOK], 0);
      SpinEdit1.SetFocus;
      exit;
    end;
   //===========================================
   //===========================================

    //========================
    //========================
    islogUpdateQ.Close;
    islogUpdateQ.ParamByName('ID').Text := UsersUserName.Text;
    islogUpdateQ.Open;

    if islogUpdateQ.IsEmpty then
    begin
      insertUserlogQ.ParamByName('userID').Text      := UsersUserName.Text;
      insertUserlogQ.ParamByName('name').Text        := UsersUserID.Text;
      insertUserlogQ.ParamByName('number').Text      := SpinEdit1.Text;
      insertUserlogQ.ParamByName('userType').Text    := 'ISD';
      insertUserlogQ.ParamByName('Date').AsDateTime  := now;
      insertUserlogQ.Execute;
    end
    else
    begin
      updateLogQ.ParamByName('userID').Text      := UsersUserName.Text;
      updateLogQ.ParamByName('name').Text        := UsersUserID.Text;
      updateLogQ.ParamByName('number').Text      := SpinEdit1.Text;
      updateLogQ.ParamByName('Date').AsDateTime  := now;
      updateLogQ.Execute;
    end;

    userQueQ.Close;
    userQueQ.ParamByName('userID').Text     := UsersUserName.Text;
    userQueQ.ParamByName('name').Text       := UsersUserID.Text;
    userQueQ.ParamByName('number').Text     := SpinEdit1.Text;
    userQueQ.ParamByName('userType').Text   := 'ISD';
    userQueQ.ParamByName('Date').Text       := FormatDateTime('YYYY-MM-DD', now);
    userQueQ.ParamByName('counter').Text    := 'counter '+ SpinEdit1.Text;
    userQueQ.ParamByName('entryU').Text     := 'ISD '+SpinEdit1.TextAfter+' '+UsersUserName.Text;
    userQueQ.Open;
    //=========================
    //=========================

      If not Assigned(FPISDMainMenuForm) then
      FPISDMainMenuForm := TFPISDMainMenuForm.Create(Application);

        {=======Scheduled User Log Check==============}
        {=============================================}
        {if UsersisSched.Value = true then
        begin
          schedUserQ.Close;
          schedUserQ.MacroByName('mon').Active := false;
          schedUserQ.MacroByName('tue').Active := false;
          schedUserQ.MacroByName('wed').Active := false;
          schedUserQ.MacroByName('thu').Active := false;
          schedUserQ.MacroByName('fri').Active := false;
          schedUserQ.MacroByName('sat').Active := false;
          schedUserQ.MacroByName('sun').Active := false;

          if FormatDateTime('ddd',now) = 'Mon' then
            schedUserQ.MacroByName('mon').Active := true
          else if FormatDateTime('ddd',now) = 'Tue' then
            schedUserQ.MacroByName('tue').Active := true
          else if FormatDateTime('ddd',now) = 'Wed' then
            schedUserQ.MacroByName('wed').Active := true
          else if FormatDateTime('ddd',now) = 'Thu' then
            schedUserQ.MacroByName('thu').Active := true
          else if FormatDateTime('ddd',now) = 'Fri' then
            schedUserQ.MacroByName('fri').Active := true
          else if FormatDateTime('ddd',now) = 'Sat' then
            schedUserQ.MacroByName('sat').Active := true
          else if FormatDateTime('ddd',now) = 'Sun' then
            schedUserQ.MacroByName('sun').Active := true;

          schedUserQ.ParamByName('nowTime').Text := FormatDateTime('hh:mm:ss',now);
          schedUserQ.ParamByName('nowdate').Text := FormatDateTime('YYYY-MM-DD',now);
          schedUserQ.Open;

          if schedUserQ.IsEmpty then
          begin
            tmpQ.Close;
            tmpQ.SQL.Clear;
            tmpQ.SQL.Add('Select ');
            tmpQ.SQL.Add('   case :dayT');
            tmpQ.SQL.Add('        when ''Mon'' then concat(TIME_FORMAT(t.monStart,''%h:%i %p''),'' to '',TIME_FORMAT(t.monEnd,''%h:%i %p'')) ');
            tmpQ.SQL.Add('        when ''Tue'' then concat(TIME_FORMAT(t.tueStart,''%h:%i %p''),'' to '',TIME_FORMAT(t.tueEnd,''%h:%i %p'')) ');
            tmpQ.SQL.Add('        when ''Wed'' then concat(TIME_FORMAT(t.wenStart,''%h:%i %p''),'' to '',TIME_FORMAT(t.wenEnd,''%h:%i %p''))  ');
            tmpQ.SQL.Add('        when ''Thu'' then concat(TIME_FORMAT(t.thuStart,''%h:%i %p''),'' to '',TIME_FORMAT(t.thuEnd,''%h:%i %p''))  ');
            tmpQ.SQL.Add('        when ''Fri'' then concat(TIME_FORMAT(t.friStart,''%h:%i %p''),'' to '',TIME_FORMAT(t.friEnd,''%h:%i %p''))  ');
            tmpQ.SQL.Add('        when ''Sat'' then concat(TIME_FORMAT(t.satStart,''%h:%i %p''),'' to '',TIME_FORMAT(t.satEnd,''%h:%i %p''))  ');
            tmpQ.SQL.Add('        when ''Sun'' then concat(TIME_FORMAT(t.sunStart,''%h:%i %p''),'' to '',TIME_FORMAT(t.sunEnd,''%h:%i %p''))  ');
            tmpQ.SQL.Add('   end timeLog ');
            tmpQ.SQL.Add(' from loguser t where t.username like :username');
            tmpQ.ParamByName('username').Text := UsersUserName.Text;
            tmpQ.ParamByName('dayT').Text     := FormatDateTime('ddd',now);
            tmpQ.Open;

            if not tmpQ.IsEmpty then
            messageDlg('User: '+username_tf.text+#13+'Account access time from '+tmpQ.FieldByName('timeLog').Text,mtWarning,[mbOK],0);

            exit;
          end;

          with FPISDMainMenuForm do
          begin
           NxOutlookBar1.Enabled := false;
           Panel4.Top  := 179;
           Panel4.Left := 1;
           Panel4.BringToFront;
           Panel4.visible :=true;

           Panel6.Top  := 404;
           Panel6.Left := 1;
           Panel6.BringToFront;
           Panel6.visible :=true;
          end;

        end;}
        {=============================================}
        {=============================================}

      Hide;




      With FPISDMainMenuForm do
        begin

          If Copy(UsersUserRestriction.Text,1,3) = 'RCD' then
             begin
               NxOutlookBar1.Item[1].Visible := False;
               NxOutlookBar1.Item[2].Visible := False;
               NxOutlookBar1.Item[5].Visible := False;
               NxOutlookBar1.Item[6].Visible := False;
               NxOutlookBar1.Item[8].Visible := False;
             end;

          If UsersUserRestriction.Text = 'MR' then
             begin
               NxOutlookBar1.Item[1].Visible := False;
               NxOutlookBar1.Item[2].Visible := False;
               NxOutlookBar1.Item[3].Visible := False;
               NxOutlookBar1.Item[4].Visible := False;
               NxOutlookBar1.Item[6].Visible := False;
               NxOutlookBar1.Item[7].Visible := False;
               NxOutlookBar1.Item[8].Visible := False;
             end;

          If UsersUserRestriction.Text = 'TSD' then
             begin
               NxOutlookBar1.Item[1].Visible := False;
               NxOutlookBar1.Item[2].Visible := False;
               NxOutlookBar1.Item[3].Visible := True;
               NxOutlookBar1.Item[4].Visible := False;
               NxOutlookBar1.Item[5].Visible := False;
               NxOutlookBar1.Item[6].Visible := False;
               NxOutlookBar1.Item[7].Visible := True;
               NxOutlookBar1.Item[8].Visible := False;
               AddNewConnection.Visible      := False;
             end;

          If UsersUserRestriction.Text = 'NC-CLERK' then
             begin
               NxOutlookBar1.Item[1].Visible := False;
               NxOutlookBar1.Item[2].Visible := False;
               NxOutlookBar1.Item[3].Visible := False;
               NxOutlookBar1.Item[4].Visible := False;
               NxOutlookBar1.Item[5].Visible := False;
               NxOutlookBar1.Item[6].Visible := True;
               NxOutlookBar1.Item[7].Visible := False;
               AddNewConnection.Visible      := False;
             end;

          If UsersUserRestriction.Text = 'NC-ADMIN' then
             begin
               NxOutlookBar1.Item[1].Visible := False;
               NxOutlookBar1.Item[2].Visible := False;
               NxOutlookBar1.Item[3].Visible := False;
               NxOutlookBar1.Item[4].Visible := False;
               NxOutlookBar1.Item[5].Visible := False;
               AddNewConnection.Visible      := True;
             end;
          If UsersUserRestriction.Text = 'MOBILE ISD' then
             begin
               NxOutlookBar1.Item[3].Visible := False;
               NxOutlookBar1.Item[4].Visible := False;
               NxOutlookBar1.Item[5].Visible := False;
               NxOutlookBar1.Item[6].Visible := False;
               NxOutlookBar1.Item[8].Visible := False;
               NxOutlookBar1.Item[9].Visible := False;
               NxOutlookBar1.Item[10].Visible := False;
             end;
        end;
       FPISDMainMenuForm.Caption := FPISDMainMenuForm.Caption + ' (ISD '+  SpinEdit1.Text+')';
      FPISDMainMenuForm.Height   := Screen.Height;
      FPISDMainMenuForm.Width    := Screen.Width;
      FPISDMainMenuForm.Show;

      case ComboBox1.itemindex of
        1 : begin FPISDMainMenuForm.Label80.Caption := 'DIPOLOG';   FPISDMainMenuForm.Label81.Caption := 'MAIN OFFICE';    end;
        2 : begin FPISDMainMenuForm.Label80.Caption := 'PI�AN';     FPISDMainMenuForm.Label81.Caption := 'AREA OFFICE';    end;
        3 : begin FPISDMainMenuForm.Label80.Caption := 'SINDANGAN'; FPISDMainMenuForm.Label81.Caption := 'AREA OFFICE';   end;
        4 : begin FPISDMainMenuForm.Label80.Caption := 'LILOY';     FPISDMainMenuForm.Label81.Caption := 'AREA OFFICE';   end;
      end;

         with FPISDMainMenuForm do
            try
             createsign.Execute;
            except
            end;
            try
              alterTable.Execute;
            except
            end;

    end;

end;
procedure TIntroForm.AdvSmoothButton1Click(Sender: TObject);
begin
  DBConnect;

  noLogQ.Close;
  noLogQ.ParamByName('id').Text := username_tf.Text;
  noLogQ.Open;

  SpinEdit1.Text :=   noLogQnumber.Text;
end;

procedure TIntroForm.DBConnect();
begin
//ISDData.MyConnection1.Connected := false;
//ISDData.MyConnection2.Connected := false;

//if not Assigned(FPISDMainMenuForm) then
//FPISDMainMenuForm := TFPISDMainMenuForm.Create(Application);

With ISDData do
begin
  case combobox1.ItemIndex of
    1 : begin
         try
            MyConnection1.Connected := false;
            MyConnection1.server := 'server';
            MyConnection1.Connected := true;

            MyConnection2.Connected := false;
            MyConnection2.server    := 'server';
            MyConnection2.Connected := true;

            queServerQ.Connected    := false;
            queServerQ.Server       := 'server';
            queServerQ.Connected    := true;
           except
            MessageDlg('DIPOLOG MAIN OFFICE OFFLINE..', mtWarning, [mbOK], 0);
           end;
        end;
    2 : begin
          try
            MyConnection1.Connected := false;
            MyConnection1.server := 'serverpao';
            MyConnection1.Connected := true;

            MyConnection2.Connected := false;
            MyConnection2.server := 'serverpao';
            MyConnection2.Connected := true;

            queServerQ.Connected    := false;
            queServerQ.Server       := 'serverpao';
            queServerQ.Connected    := true;
          except
            MessageDlg('PI�AN AREA OFFICE OFFLINE..', mtWarning, [mbOK], 0);
          end;
        end;
    3 : begin
         try
            MyConnection1.Connected := false;
            MyConnection1.server := 'serversao';
            MyConnection1.Connected := true;

            MyConnection2.Connected := false;
            MyConnection2.server := 'serversao';
            MyConnection2.Connected := true;

            queServerQ.Connected    := false;
            queServerQ.Server       := 'serversao';
            queServerQ.Connected    := true;
          except
           MessageDlg('SINDANGAN AREA OFFICE OFFLINE..', mtWarning, [mbOK], 0);
         end;
        end;
    4 : begin
         try
            MyConnection1.Connected := false;
            MyConnection1.server := 'serverlao';
            MyConnection1.Connected := true;

            MyConnection2.Connected := false;
            MyConnection2.server := 'serverlao';
            MyConnection2.Connected := true;

            queServerQ.Connected    := false;
            queServerQ.Server       := 'serverlao';
            queServerQ.Connected    := true;
          except
            MessageDlg('LILOY AREA OFFICE OFFLINE..', mtWarning, [mbOK], 0);
          end;
        end;
    end;

end;

end;
procedure TIntroForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ISDData.Users.Close;
  ISDData.Company.Close;
  ISDData.complaints.Close;
  ISDData.MemberMaster.Close;
  ISDData.MemberDetail.Close;
  ISDData.LoadDetail.Close;
  ISDData.NewApplicants.Close;
  ISDData.NewApplicantCharge.Close;
  ISDData.AccountCode.Close;
  ISDData.LoadSurvey.Close;
  ISDData.ChangeMeter.Close;
  ISDData.Destroy;
  Action := caFree;
  IntroForm := Nil;
end;

procedure TIntroForm.username_tfKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY,VK_TAB,0);
    end;
end;


procedure TIntroForm.password_tfKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then LogInClick(self);
end;

end.
