object SCForm: TSCForm
  Left = 486
  Top = 156
  BorderIcons = [biSystemMenu]
  Caption = 'Senior Citizen Discount Interface'
  ClientHeight = 393
  ClientWidth = 1010
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object NxLabel1: TNxLabel
    Left = 136
    Top = 20
    Width = 168
    Height = 13
    Caption = 'Senior Citizen Name or Billing Name'
    HorizontalPosition = hpLeft
    InnerHorizontal = True
    InnerVertical = False
    InnerMargins.Horizontal = 0
    InnerMargins.Vertical = 2
    VerticalPosition = vpTop
  end
  object NxButton10: TNxButton
    Left = 16
    Top = 143
    Width = 105
    Caption = 'List Period Covered'
    TabOrder = 11
    OnClick = NxButton10Click
  end
  object NxButton1: TNxButton
    Left = 16
    Top = 16
    Width = 105
    Caption = 'New Applicant'
    TabOrder = 0
    OnClick = NxButton1Click
  end
  object SCSearch: TNxEdit
    Left = 309
    Top = 16
    Width = 177
    Height = 21
    TabOrder = 1
  end
  object NxButton2: TNxButton
    Left = 16
    Top = 48
    Width = 105
    Caption = 'Edit Record'
    TabOrder = 2
    OnClick = NxButton2Click
  end
  object NxButton3: TNxButton
    Left = 16
    Top = 80
    Width = 105
    Caption = 'Delete Record'
    TabOrder = 3
    OnClick = NxButton3Click
  end
  object NxButton4: TNxButton
    Left = 16
    Top = 112
    Width = 105
    Caption = 'Alpha List'
    TabOrder = 4
    OnClick = NxButton4Click
  end
  object NxButton5: TNxButton
    Left = 16
    Top = 352
    Width = 105
    Caption = 'Close'
    TabOrder = 5
    OnClick = NxButton5Click
  end
  object NxButton6: TNxButton
    Left = 490
    Top = 14
    Width = 43
    Caption = 'Find'
    TabOrder = 6
    OnClick = NxButton6Click
  end
  object CRDBGrid1: TCRDBGrid
    Left = 127
    Top = 39
    Width = 875
    Height = 328
    Ctl3D = False
    DataSource = ISDData.dsSC
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'AccountNumber'
        Title.Alignment = taCenter
        Title.Caption = 'Account Number'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BillingName'
        Title.Alignment = taCenter
        Title.Caption = 'Billing Name'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name'
        Title.Alignment = taCenter
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDay'
        Title.Alignment = taCenter
        Title.Caption = 'Birth Day'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPNo'
        Title.Alignment = taCenter
        Title.Caption = 'CP No'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SCIDNo'
        Title.Alignment = taCenter
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ExpirationDate'
        Title.Alignment = taCenter
        Width = 64
        Visible = True
      end>
  end
  object NxButton7: TNxButton
    Left = 535
    Top = 14
    Width = 43
    Caption = 'All'
    TabOrder = 8
    OnClick = NxButton7Click
  end
  object SCRecordPanel: TNxHeaderPanel
    Left = 110
    Top = 97
    Width = 319
    Height = 341
    Caption = 'Senior Citizen Record'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clBlack
    HeaderFont.Height = -11
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = [fsBold]
    ParentHeaderFont = False
    TabOrder = 9
    Visible = False
    DesignSize = (
      317
      339)
    FullWidth = 319
    object Label1: TLabel
      Left = 16
      Top = 40
      Width = 80
      Height = 13
      Alignment = taRightJustify
      Caption = 'Account Number'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 74
      Top = 60
      Width = 22
      Height = 13
      Alignment = taRightJustify
      Caption = 'Area'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 71
      Top = 81
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Book'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 47
      Top = 102
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'Sequence'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 38
      Top = 123
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Billing Name'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 29
      Top = 144
      Width = 67
      Height = 13
      Alignment = taRightJustify
      Caption = 'Spouse Name'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 58
      Top = 165
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Birthday'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 39
      Top = 186
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cellphone #'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 65
      Top = 207
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'ID No.'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 35
      Top = 249
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = 'Date Applied'
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 24
      Top = 270
      Width = 72
      Height = 13
      Alignment = taRightJustify
      Caption = 'Expiration Date'
      FocusControl = DBEdit11
    end
    object Label12: TLabel
      Left = 54
      Top = 291
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Remarks'
      FocusControl = DBEdit11
    end
    object Label13: TLabel
      Left = 58
      Top = 312
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Address'
      FocusControl = DBEdit11
    end
    object Label14: TLabel
      Left = 26
      Top = 228
      Width = 70
      Height = 13
      Alignment = taRightJustify
      Caption = 'Spouse ID No.'
      FocusControl = DBEdit9
    end
    object DBEdit1: TDBEdit
      Left = 100
      Top = 37
      Width = 173
      Height = 19
      Ctl3D = False
      DataField = 'AccountNumber'
      DataSource = ISDData.dsSC
      ParentCtl3D = False
      TabOrder = 0
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 100
      Top = 58
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'Area'
      DataSource = ISDData.dsSC
      ParentCtl3D = False
      TabOrder = 1
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit3: TDBEdit
      Left = 100
      Top = 79
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'Book'
      DataSource = ISDData.dsSC
      ParentCtl3D = False
      TabOrder = 2
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit4: TDBEdit
      Left = 100
      Top = 100
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'Sequence'
      DataSource = ISDData.dsSC
      ParentCtl3D = False
      TabOrder = 3
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit5: TDBEdit
      Left = 100
      Top = 121
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'BillingName'
      DataSource = ISDData.dsSC
      ParentCtl3D = False
      TabOrder = 4
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit6: TDBEdit
      Left = 100
      Top = 142
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'Name'
      DataSource = ISDData.dsSC
      ParentCtl3D = False
      TabOrder = 5
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit7: TDBEdit
      Left = 100
      Top = 163
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'BDay'
      DataSource = ISDData.dsSC
      ParentCtl3D = False
      TabOrder = 6
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit8: TDBEdit
      Left = 100
      Top = 184
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'CPNo'
      DataSource = ISDData.dsSC
      ParentCtl3D = False
      TabOrder = 7
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit9: TDBEdit
      Left = 100
      Top = 205
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'SCIDNo'
      DataSource = ISDData.dsSC
      ParentCtl3D = False
      TabOrder = 8
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit10: TDBEdit
      Left = 100
      Top = 247
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'DateApplied'
      DataSource = ISDData.dsSC
      ParentCtl3D = False
      TabOrder = 10
      OnExit = DBEdit10Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit11: TDBEdit
      Left = 100
      Top = 268
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'ExpirationDate'
      DataSource = ISDData.dsSC
      ParentCtl3D = False
      TabOrder = 11
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit12: TDBEdit
      Left = 100
      Top = 289
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'Remarks'
      DataSource = ISDData.dsSC
      ParentCtl3D = False
      TabOrder = 12
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit13: TDBEdit
      Left = 100
      Top = 310
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'Address'
      DataSource = ISDData.dsSC
      ParentCtl3D = False
      TabOrder = 13
      OnKeyPress = DBEdit1KeyPress
    end
    object NxLinkLabel1: TNxLinkLabel
      Left = 222
      Top = 6
      Width = 30
      Height = 15
      Anchors = [akTop, akRight]
      Caption = 'Save'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      HoverColor = clRed
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel1Click
    end
    object NxLinkLabel2: TNxLinkLabel
      Left = 256
      Top = 6
      Width = 40
      Height = 15
      Anchors = [akTop, akRight]
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      HoverColor = clRed
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel2Click
    end
    object DBEdit14: TDBEdit
      Left = 100
      Top = 226
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'SpouseSCIDNo'
      DataSource = ISDData.dsSC
      ParentCtl3D = False
      TabOrder = 9
      OnKeyPress = DBEdit1KeyPress
    end
    object NxLinkLabel3: TNxLinkLabel
      Left = 277
      Top = 37
      Width = 21
      Height = 15
      Caption = 'Find'
      HoverColor = clRed
      TextDistance = 2
      VertSpacing = 2
      OnClick = NxLinkLabel3Click
    end
  end
  object Panel1: TPanel
    Left = 520
    Top = 328
    Width = 953
    Height = 585
    BevelInner = bvLowered
    BorderWidth = 5
    TabOrder = 10
    Visible = False
    object PageControl1: TPageControl
      Left = 7
      Top = 7
      Width = 939
      Height = 571
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Alpha List'
        object QuickRep1: TQuickRep
          Left = 19
          Top = 23
          Width = 816
          Height = 1344
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = ISDData.SC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Functions.Strings = (
            'PAGENUMBER'
            'COLUMNNUMBER'
            'REPORTTITLE')
          Functions.DATA = (
            '0'
            '0'
            #39#39)
          Options = [FirstPageHeader, LastPageFooter]
          Page.Columns = 1
          Page.Orientation = poPortrait
          Page.PaperSize = Legal
          Page.Continuous = False
          Page.Values = (
            381.000000000000000000
            3556.000000000000000000
            127.000000000000000000
            2159.000000000000000000
            127.000000000000000000
            127.000000000000000000
            0.000000000000000000)
          PrinterSettings.Copies = 1
          PrinterSettings.OutputBin = Auto
          PrinterSettings.Duplex = False
          PrinterSettings.FirstPage = 0
          PrinterSettings.LastPage = 0
          PrinterSettings.UseStandardprinter = False
          PrinterSettings.UseCustomBinCode = False
          PrinterSettings.CustomBinCode = 0
          PrinterSettings.ExtendedDuplex = 0
          PrinterSettings.UseCustomPaperCode = False
          PrinterSettings.CustomPaperCode = 0
          PrinterSettings.PrintMetaFile = False
          PrinterSettings.PrintQuality = 0
          PrinterSettings.Collate = 0
          PrinterSettings.ColorOption = 0
          PrintIfEmpty = True
          SnapToGrid = True
          Units = Inches
          Zoom = 100
          PrevFormStyle = fsStayOnTop
          PreviewInitialState = wsMaximized
          PrevInitialZoom = qrZoomOther
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object TitleBand1: TQRBand
            Left = 48
            Top = 48
            Width = 720
            Height = 112
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              296.333333333333300000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRSysData1: TQRSysData
              Left = 98
              Top = 52
              Width = 523
              Height = 28
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                74.083333333333330000
                259.291666666666700000
                137.583333333333300000
                1383.770833333333000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              Color = clWhite
              Data = qrsReportTitle
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Text = 'Summary of Approved Senior Citizen Registrants '
              Transparent = False
              ExportAs = exptText
              FontSize = 14
            end
            object QRLabel19: TQRLabel
              Left = 184
              Top = 24
              Width = 361
              Height = 21
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                55.562500000000000000
                486.833333333333300000
                63.500000000000000000
                955.145833333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOP., INC.'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 12
            end
            object DateLabel: TQRLabel
              Left = 184
              Top = 80
              Width = 361
              Height = 21
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                55.562500000000000000
                486.833333333333300000
                211.666666666666700000
                955.145833333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'DateLabel'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 12
            end
          end
          object ColumnHeaderBand1: TQRBand
            Left = 48
            Top = 160
            Width = 720
            Height = 32
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              84.666666666666670000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRLabel1: TQRLabel
              Left = 96
              Top = 8
              Width = 28
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                254.000000000000000000
                21.166666666666670000
                74.083333333333330000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Name'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel2: TQRLabel
              Left = 220
              Top = 8
              Width = 51
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                582.083333333333300000
                21.166666666666670000
                134.937500000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Account #'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel3: TQRLabel
              Left = 344
              Top = 8
              Width = 40
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                910.166666666666700000
                21.166666666666670000
                105.833333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Address'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel4: TQRLabel
              Left = 450
              Top = 8
              Width = 62
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1190.625000000000000000
                21.166666666666670000
                164.041666666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Date Applied'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel5: TQRLabel
              Left = 600
              Top = 8
              Width = 42
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1587.500000000000000000
                21.166666666666670000
                111.125000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Remarks'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
          end
          object DetailBand1: TQRBand
            Left = 48
            Top = 192
            Width = 720
            Height = 22
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              58.208333333333330000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText1: TQRDBText
              Left = 7
              Top = 3
              Width = 54
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                18.520833333333330000
                7.937500000000000000
                142.875000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = ISDData.SC
              DataField = 'BillingName'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText2: TQRDBText
              Left = 220
              Top = 3
              Width = 77
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                582.083333333333300000
                7.937500000000000000
                203.729166666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ISDData.SC
              DataField = 'AccountNumber'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText3: TQRDBText
              Left = 300
              Top = 3
              Width = 147
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                793.750000000000000000
                7.937500000000000000
                388.937500000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ISDData.SC
              DataField = 'Address'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText4: TQRDBText
              Left = 451
              Top = 3
              Width = 62
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1193.270833333333000000
                7.937500000000000000
                164.041666666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ISDData.SC
              DataField = 'DateApplied'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText5: TQRDBText
              Left = 515
              Top = 3
              Width = 42
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1362.604166666667000000
                7.937500000000000000
                111.125000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = ISDData.SC
              DataField = 'Remarks'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Period Covered'
        ImageIndex = 1
        object QuickRep2: TQuickRep
          Left = 35
          Top = 7
          Width = 816
          Height = 1344
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = SCPeriod
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Functions.Strings = (
            'PAGENUMBER'
            'COLUMNNUMBER'
            'REPORTTITLE')
          Functions.DATA = (
            '0'
            '0'
            #39#39)
          Options = [FirstPageHeader, LastPageFooter]
          Page.Columns = 1
          Page.Orientation = poPortrait
          Page.PaperSize = Legal
          Page.Continuous = False
          Page.Values = (
            381.000000000000000000
            3556.000000000000000000
            127.000000000000000000
            2159.000000000000000000
            127.000000000000000000
            127.000000000000000000
            0.000000000000000000)
          PrinterSettings.Copies = 1
          PrinterSettings.OutputBin = Auto
          PrinterSettings.Duplex = False
          PrinterSettings.FirstPage = 0
          PrinterSettings.LastPage = 0
          PrinterSettings.UseStandardprinter = False
          PrinterSettings.UseCustomBinCode = False
          PrinterSettings.CustomBinCode = 0
          PrinterSettings.ExtendedDuplex = 0
          PrinterSettings.UseCustomPaperCode = False
          PrinterSettings.CustomPaperCode = 0
          PrinterSettings.PrintMetaFile = False
          PrinterSettings.PrintQuality = 0
          PrinterSettings.Collate = 0
          PrinterSettings.ColorOption = 0
          PrintIfEmpty = True
          SnapToGrid = True
          Units = Inches
          Zoom = 100
          PrevFormStyle = fsStayOnTop
          PreviewInitialState = wsMaximized
          PrevInitialZoom = qrZoomOther
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object QRBand1: TQRBand
            Left = 48
            Top = 48
            Width = 720
            Height = 89
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              235.479166666666700000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRSysData3: TQRSysData
              Left = 98
              Top = 32
              Width = 523
              Height = 28
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                74.083333333333330000
                259.291666666666700000
                84.666666666666670000
                1383.770833333333000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              Color = clWhite
              Data = qrsReportTitle
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Text = 'Summary of Approved Senior Citizen Registrants '
              Transparent = False
              ExportAs = exptText
              FontSize = 14
            end
            object PeriodCovered: TQRLabel
              Left = 184
              Top = 60
              Width = 361
              Height = 21
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                55.562500000000000000
                486.833333333333300000
                158.750000000000000000
                955.145833333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Period Covered'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 12
            end
            object QRLabel6: TQRLabel
              Left = 184
              Top = 8
              Width = 361
              Height = 21
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                55.562500000000000000
                486.833333333333300000
                21.166666666666670000
                955.145833333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOP., INC.'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 12
            end
          end
          object QRBand2: TQRBand
            Left = 48
            Top = 137
            Width = 720
            Height = 32
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              84.666666666666670000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRLabel10: TQRLabel
              Left = 120
              Top = 8
              Width = 28
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                317.500000000000000000
                21.166666666666670000
                74.083333333333330000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Name'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel11: TQRLabel
              Left = 247
              Top = 8
              Width = 51
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                653.520833333333300000
                21.166666666666670000
                134.937500000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Account #'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel12: TQRLabel
              Left = 359
              Top = 8
              Width = 40
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                949.854166666666700000
                21.166666666666670000
                105.833333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Address'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel13: TQRLabel
              Left = 440
              Top = 8
              Width = 62
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1164.166666666667000000
                21.166666666666670000
                164.041666666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Date Applied'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel14: TQRLabel
              Left = 624
              Top = 8
              Width = 42
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1651.000000000000000000
                21.166666666666670000
                111.125000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Remarks'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel9: TQRLabel
              Left = 509
              Top = 8
              Width = 57
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1346.729166666667000000
                21.166666666666670000
                150.812500000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Expiry Date'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel15: TQRLabel
              Left = 6
              Top = 8
              Width = 27
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                15.875000000000000000
                21.166666666666670000
                71.437500000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Serial'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
          end
          object QRBand3: TQRBand
            Left = 48
            Top = 169
            Width = 720
            Height = 22
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              58.208333333333330000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText6: TQRDBText
              Left = 45
              Top = 3
              Width = 54
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                119.062500000000000000
                7.937500000000000000
                142.875000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = SCPeriod
              DataField = 'BillingName'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText7: TQRDBText
              Left = 244
              Top = 3
              Width = 77
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                645.583333333333300000
                7.937500000000000000
                203.729166666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = SCPeriod
              DataField = 'AccountNumber'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText8: TQRDBText
              Left = 324
              Top = 3
              Width = 109
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                857.250000000000000000
                7.937500000000000000
                288.395833333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = SCPeriod
              DataField = 'Address'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText9: TQRDBText
              Left = 441
              Top = 3
              Width = 54
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1166.812500000000000000
                7.937500000000000000
                142.875000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = SCPeriod
              DataField = 'DateApplied'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText10: TQRDBText
              Left = 576
              Top = 3
              Width = 42
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1524.000000000000000000
                7.937500000000000000
                111.125000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = SCPeriod
              DataField = 'Remarks'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText12: TQRDBText
              Left = 509
              Top = 3
              Width = 62
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1346.729166666667000000
                7.937500000000000000
                164.041666666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = SCPeriod
              DataField = 'ExpirationDate'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRSysData2: TQRSysData
              Left = 6
              Top = 3
              Width = 27
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                15.875000000000000000
                7.937500000000000000
                71.437500000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              Data = qrsDetailNo
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              FontSize = 8
            end
          end
        end
      end
    end
  end
  object NxHeaderPanel1: TNxHeaderPanel
    Left = 295
    Top = 257
    Width = 265
    Height = 132
    Caption = 'List Period Covered'
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clBlack
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    ParentHeaderFont = False
    TabOrder = 12
    Visible = False
    FullWidth = 265
    object NxLabel2: TNxLabel
      Left = 23
      Top = 55
      Width = 23
      Height = 13
      Caption = 'From'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel3: TNxLabel
      Left = 33
      Top = 86
      Width = 13
      Height = 13
      Caption = 'To'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object DateFrom: TNxDatePicker
      Left = 51
      Top = 50
      Width = 97
      Height = 21
      TabOrder = 0
      Text = '11-5-2010'
      HideFocus = False
      Date = 40487.000000000000000000
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object DateTo: TNxDatePicker
      Left = 51
      Top = 82
      Width = 97
      Height = 21
      TabOrder = 1
      Text = '11-5-2010'
      HideFocus = False
      Date = 40487.000000000000000000
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object NxButton11: TNxButton
      Left = 154
      Top = 49
      Width = 75
      Caption = 'Print Preview'
      TabOrder = 2
      OnClick = NxButton11Click
    end
    object NxButton12: TNxButton
      Left = 154
      Top = 81
      Width = 75
      Caption = 'Close'
      TabOrder = 3
      OnClick = NxButton12Click
    end
  end
  object ViewExpiredSC: TAdvOfficeCheckBox
    Left = 606
    Top = 13
    Width = 179
    Height = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    Alignment = taLeftJustify
    Caption = 'View Expired SC discount'
    ReturnIsTab = False
    Version = '1.3.6.0'
  end
  object Master: TMyQuery
    Connection = ISDData.MyConnection2
    SQL.Strings = (
      'select * from master where accountnumber = :accountnumber')
    Left = 16
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'accountnumber'
      end>
    object MasterCode: TIntegerField
      FieldName = 'Code'
    end
    object MasterArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object MasterBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object MasterSequence: TStringField
      FieldName = 'Sequence'
      Size = 4
    end
    object MasterAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object MasterName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object MasterAddress: TStringField
      FieldName = 'Address'
      Size = 50
    end
    object MasterRateCode: TStringField
      FieldName = 'RateCode'
      FixedChar = True
      Size = 1
    end
    object MasterConsCode: TStringField
      FieldName = 'ConsCode'
      FixedChar = True
      Size = 1
    end
    object MasterConnCode: TStringField
      FieldName = 'ConnCode'
      FixedChar = True
      Size = 1
    end
    object MasterTransformer: TStringField
      FieldName = 'Transformer'
    end
    object MasterMeterBrand: TStringField
      FieldName = 'MeterBrand'
      Size = 10
    end
    object MasterSerial: TStringField
      FieldName = 'Serial'
    end
    object MasterMultiplier: TFloatField
      FieldName = 'Multiplier'
    end
    object MasterNewConnectionDate: TDateField
      FieldName = 'NewConnectionDate'
    end
    object MasterReconnectionDate: TDateField
      FieldName = 'ReconnectionDate'
    end
    object MasterDisconnectionDate: TDateField
      FieldName = 'DisconnectionDate'
    end
    object MasterPreviousReadingDate: TDateField
      FieldName = 'PreviousReadingDate'
    end
    object MasterPresentReadingDate: TDateField
      FieldName = 'PresentReadingDate'
    end
    object MasterPreviousReadingKWH: TFloatField
      FieldName = 'PreviousReadingKWH'
    end
    object MasterPresentReadingKWH: TFloatField
      FieldName = 'PresentReadingKWH'
    end
    object MasterDiff: TFloatField
      FieldName = 'Diff'
    end
    object MasterDemand: TFloatField
      FieldName = 'Demand'
    end
    object MasterFlatRateWattage: TFloatField
      FieldName = 'FlatRateWattage'
    end
    object MasterFeedBackCode: TStringField
      FieldName = 'FeedBackCode'
      FixedChar = True
      Size = 2
    end
    object MasterCM: TStringField
      FieldName = 'CM'
      FixedChar = True
      Size = 1
    end
    object MasterCMMultiplier: TFloatField
      FieldName = 'CMMultiplier'
    end
    object MasterCMPreviousReadingKWH: TFloatField
      FieldName = 'CMPreviousReadingKWH'
    end
    object MasterCMPresentReadingKWH: TFloatField
      FieldName = 'CMPresentReadingKWH'
    end
    object MasterCMKilowattHour: TFloatField
      FieldName = 'CMKilowattHour'
    end
    object MasterCMDemand: TFloatField
      FieldName = 'CMDemand'
    end
    object MasterKilowattHour: TFloatField
      FieldName = 'KilowattHour'
    end
    object MasterKilowattUsed: TFloatField
      FieldName = 'KilowattUsed'
    end
    object MasterGenSysCharge: TFloatField
      FieldName = 'GenSysCharge'
    end
    object MasterHostCommCharge: TFloatField
      FieldName = 'HostCommCharge'
    end
    object MasterForexCharge: TFloatField
      FieldName = 'ForexCharge'
    end
    object MasterTCDemandCharge: TFloatField
      FieldName = 'TCDemandCharge'
    end
    object MasterTCTransSystemCharge: TFloatField
      FieldName = 'TCTransSystemCharge'
    end
    object MasterSystemLossCharge: TFloatField
      FieldName = 'SystemLossCharge'
    end
    object MasterDCDemandCharge: TFloatField
      FieldName = 'DCDemandCharge'
    end
    object MasterDCDistributionCharge: TFloatField
      FieldName = 'DCDistributionCharge'
    end
    object MasterSCRetCustCharge: TFloatField
      FieldName = 'SCRetCustCharge'
    end
    object MasterSCSupplySysCharge: TFloatField
      FieldName = 'SCSupplySysCharge'
    end
    object MasterMCRetailCustCharge: TFloatField
      FieldName = 'MCRetailCustCharge'
    end
    object MasterMCSystemCharge: TFloatField
      FieldName = 'MCSystemCharge'
    end
    object MasterUCNPCStrandedDebts: TFloatField
      FieldName = 'UCNPCStrandedDebts'
    end
    object MasterUCNPCStrandedContCost: TFloatField
      FieldName = 'UCNPCStrandedContCost'
    end
    object MasterUCDUStrandedContCost: TFloatField
      FieldName = 'UCDUStrandedContCost'
    end
    object MasterUCME: TFloatField
      FieldName = 'UCME'
    end
    object MasterUCEqTaxesAndRoyalties: TFloatField
      FieldName = 'UCEqTaxesAndRoyalties'
    end
    object MasterUCEC: TFloatField
      FieldName = 'UCEC'
    end
    object MasterUCCrossSubRemoval: TFloatField
      FieldName = 'UCCrossSubRemoval'
    end
    object MasterICCrossSubsidyCharge: TFloatField
      FieldName = 'ICCrossSubsidyCharge'
    end
    object MasterPowerActRateRed: TFloatField
      FieldName = 'PowerActRateRed'
    end
    object MasterLifelineDiscSubs: TFloatField
      FieldName = 'LifelineDiscSubs'
    end
    object MasterLoanCondo: TFloatField
      FieldName = 'LoanCondo'
    end
    object MasterTransformerRental: TFloatField
      FieldName = 'TransformerRental'
    end
    object MasterOCCode1: TStringField
      FieldName = 'OCCode1'
      Size = 10
    end
    object MasterOCAmount1: TFloatField
      FieldName = 'OCAmount1'
    end
    object MasterOCMo1: TFloatField
      FieldName = 'OCMo1'
    end
    object MasterOCTotal1: TFloatField
      FieldName = 'OCTotal1'
    end
    object MasterOCCode2: TStringField
      FieldName = 'OCCode2'
      Size = 10
    end
    object MasterOCAmount2: TFloatField
      FieldName = 'OCAmount2'
    end
    object MasterOCMo2: TFloatField
      FieldName = 'OCMo2'
    end
    object MasterOCTotal2: TFloatField
      FieldName = 'OCTotal2'
    end
    object MasterOCCode3: TStringField
      FieldName = 'OCCode3'
      Size = 10
    end
    object MasterOCAmount3: TFloatField
      FieldName = 'OCAmount3'
    end
    object MasterOCMo3: TFloatField
      FieldName = 'OCMo3'
    end
    object MasterOCTotal3: TFloatField
      FieldName = 'OCTotal3'
    end
    object MasterTotalBill: TFloatField
      FieldName = 'TotalBill'
    end
    object MasterBillNumber: TStringField
      FieldName = 'BillNumber'
      Size = 15
    end
    object MasterOEBRNumber: TStringField
      FieldName = 'OEBRNumber'
      Size = 10
    end
    object MasterBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object MasterDeleteRemarks: TStringField
      FieldName = 'DeleteRemarks'
      Size = 30
    end
    object MasterPoleNumber: TStringField
      FieldName = 'PoleNumber'
      Size = 40
    end
    object MasterFeederNumber: TStringField
      FieldName = 'FeederNumber'
    end
    object MasterXFormerQty: TIntegerField
      FieldName = 'XFormerQty'
    end
    object MasterXFormerKVA: TStringField
      FieldName = 'XFormerKVA'
    end
    object MasterAge30: TFloatField
      FieldName = 'Age30'
    end
    object MasterAge60: TFloatField
      FieldName = 'Age60'
    end
    object MasterAge90: TFloatField
      FieldName = 'Age90'
    end
    object MasterAge120: TFloatField
      FieldName = 'Age120'
    end
    object MasterAgeOver120: TFloatField
      FieldName = 'AgeOver120'
    end
    object MasterAgeTotal: TFloatField
      FieldName = 'AgeTotal'
    end
    object MasterTotalPayments: TFloatField
      FieldName = 'TotalPayments'
    end
    object MasterARBalance: TFloatField
      FieldName = 'ARBalance'
    end
    object MasterLCCustMo: TFloatField
      FieldName = 'LCCustMo'
    end
    object MasterPrevYearAdjPowerCost: TFloatField
      FieldName = 'PrevYearAdjPowerCost'
    end
    object MasterSysLossUnderRecov: TFloatField
      FieldName = 'SysLossUnderRecov'
    end
    object MasterVATDisc: TFloatField
      FieldName = 'VATDisc'
    end
    object MasterVATDiscAmt: TFloatField
      FieldName = 'VATDiscAmt'
    end
    object MasterVATDistDiscAmt: TFloatField
      FieldName = 'VATDistDiscAmt'
    end
    object MasterVATGenCoDiscAmt: TFloatField
      FieldName = 'VATGenCoDiscAmt'
    end
    object MasterVATTransCoDiscAmt: TFloatField
      FieldName = 'VATTransCoDiscAmt'
    end
    object MasterVATSystemLossDiscAmt: TFloatField
      FieldName = 'VATSystemLossDiscAmt'
    end
    object MasterVATDist: TFloatField
      FieldName = 'VATDist'
    end
    object MasterVATGenCO: TFloatField
      FieldName = 'VATGenCO'
    end
    object MasterVATTransCO: TFloatField
      FieldName = 'VATTransCO'
    end
    object MasterVATSystemLossGenCO: TFloatField
      FieldName = 'VATSystemLossGenCO'
    end
    object MasterVATSystemLossTransCO: TFloatField
      FieldName = 'VATSystemLossTransCO'
    end
    object MasterVAT: TFloatField
      FieldName = 'VAT'
    end
    object MasterDiffBillPerKwhr: TFloatField
      FieldName = 'DiffBillPerKwhr'
    end
    object MasterDiffBillPerKW: TFloatField
      FieldName = 'DiffBillPerKW'
    end
    object MasterDiffBillPerCust: TFloatField
      FieldName = 'DiffBillPerCust'
    end
    object MasterMCC: TFloatField
      FieldName = 'MCC'
    end
    object MasterPKVROebrNumber: TStringField
      FieldName = 'PKVROebrNumber'
    end
    object MasterPKVRBillMonth: TStringField
      FieldName = 'PKVRBillMonth'
      Size = 4
    end
    object MasterPKVRAmount: TFloatField
      FieldName = 'PKVRAmount'
    end
    object MasterSCDisc: TFloatField
      FieldName = 'SCDisc'
    end
    object MasterWRateCode: TStringField
      FieldName = 'WRateCode'
      Size = 1
    end
  end
  object SCPeriod: TMyQuery
    Connection = ISDData.MyConnection2
    SQL.Strings = (
      'select * from scdisc'
      
        ' where dateapplied between :datefrom and :dateto order by IDSCDi' +
        'sc')
    Left = 47
    Top = 175
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datefrom'
      end
      item
        DataType = ftUnknown
        Name = 'dateto'
      end>
    object SCPeriodidSCDisc: TLargeintField
      FieldName = 'idSCDisc'
    end
    object SCPeriodSCode: TFloatField
      FieldName = 'SCode'
    end
    object SCPeriodArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object SCPeriodBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object SCPeriodSequence: TStringField
      FieldName = 'Sequence'
      Size = 6
    end
    object SCPeriodAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object SCPeriodBillingName: TStringField
      FieldName = 'BillingName'
      Size = 50
    end
    object SCPeriodName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object SCPeriodBDay: TDateField
      FieldName = 'BDay'
    end
    object SCPeriodCPNo: TStringField
      FieldName = 'CPNo'
      Size = 15
    end
    object SCPeriodSCIDNo: TStringField
      FieldName = 'SCIDNo'
    end
    object SCPeriodDateApplied: TDateField
      FieldName = 'DateApplied'
    end
    object SCPeriodExpirationDate: TDateField
      FieldName = 'ExpirationDate'
    end
    object SCPeriodRemarks: TStringField
      FieldName = 'Remarks'
      Size = 50
    end
    object SCPeriodAddress: TStringField
      FieldName = 'Address'
      Size = 50
    end
  end
end
