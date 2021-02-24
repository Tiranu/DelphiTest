object Form1: TForm1
  Left = 727
  Top = 124
  Caption = 'Form1'
  ClientHeight = 292
  ClientWidth = 449
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 120
    Top = 104
    Width = 19
    Height = 13
    Caption = 'Tag'
  end
  object Label2: TLabel
    Left = 120
    Top = 128
    Width = 30
    Height = 13
    Caption = 'Monat'
  end
  object Label3: TLabel
    Left = 120
    Top = 152
    Width = 20
    Height = 13
    Caption = 'Jahr'
  end
  object Panel1: TPanel
    Left = 56
    Top = 24
    Width = 337
    Height = 57
    Caption = 'g'#252'ltiges Datum'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Panel1Click
  end
  object Edit1: TEdit
    Left = 152
    Top = 96
    Width = 145
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 56
    Top = 184
    Width = 337
    Height = 57
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Panel2: TPanel
    Left = 56
    Top = 248
    Width = 337
    Height = 49
    Caption = 'Panel2'
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 152
    Top = 120
    Width = 145
    Height = 21
    TabOrder = 4
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 152
    Top = 144
    Width = 145
    Height = 21
    TabOrder = 5
    Text = 'Edit3'
  end
end
