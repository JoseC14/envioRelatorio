object frmGerCidade: TfrmGerCidade
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 550
  ClientWidth = 745
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 57
    Top = 8
    Width = 269
    Height = 34
    Alignment = taCenter
    Caption = 'Gerenciamento de Cidades'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Poppins'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnPesquisar: TbsSkinSpeedButton
    Left = 249
    Top = 63
    Width = 121
    Height = 19
    HintImageIndex = 0
    SkinDataName = 'toolbutton'
    DefaultFont.Charset = ANSI_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Segoe UI'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    CheckedMode = False
    UseSkinSize = True
    UseSkinFontColor = True
    WidthWithCaption = 0
    WidthWithoutCaption = 0
    ImageIndex = 0
    RepeatMode = False
    RepeatInterval = 100
    Transparent = False
    Flat = False
    AllowAllUp = False
    Down = False
    GroupIndex = 0
    Caption = 'Pesquisar'
    ShowCaption = True
    Glyph.Data = {
      06030000424D060300000000000036000000280000000F0000000F0000000100
      180000000000D0020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF787878101010000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF606060000000777777000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6060600000
      005E5E5EFFFFFF000000FFFFFFFFFFFFFFFFFF7A7A7A00000000000000000000
      00006C6C6CFFFFFF6161610000005E5E5EFFFFFFFFFFFF000000FFFFFFFEFEFE
      0000000000004040408888888888884F4F4F0000000000000000005F5F5FFFFF
      FFFFFFFFFFFFFF000000FFFFFF000000000000E8E8E8FFFFFFFFFFFFFFFFFFFF
      FFFFF4F4F4000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000999999000000
      E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F40000006B6B6BFFFF
      FFFFFFFFFFFFFF0000002E2E2E2A2A2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF4F4F4F000000FFFFFFFFFFFFFFFFFF000000000000878787
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF888888000000FFFF
      FFFFFFFFFFFFFF000000000000858585FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF898989000000FFFFFFFFFFFFFFFFFF0000003535351D1D1D
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF424242000000FFFF
      FFFFFFFFFFFFFF000000A4A4A4000000D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFE9E9E90000007A7A7AFFFFFFFFFFFFFFFFFF000000FFFFFF0A0A0A
      000000D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFE1E1E1000000000000FFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFF0A0A0A0000001A1A1A83838386868628
      2828000000000000FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFA3A3A33535350000000000002E2E2E9A9A9AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000}
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnPesquisarClick
  end
  object btnAlterar: TbsSkinSpeedButton
    Left = 376
    Top = 63
    Width = 121
    Height = 19
    HintImageIndex = 0
    SkinDataName = 'toolbutton'
    DefaultFont.Charset = ANSI_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Segoe UI'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    CheckedMode = False
    UseSkinSize = True
    UseSkinFontColor = True
    WidthWithCaption = 0
    WidthWithoutCaption = 0
    ImageIndex = 0
    RepeatMode = False
    RepeatInterval = 100
    Transparent = False
    Flat = False
    AllowAllUp = False
    Down = False
    GroupIndex = 0
    Caption = 'Alterar'
    ShowCaption = True
    Glyph.Data = {
      06030000424D060300000000000036000000280000000F0000000F0000000100
      180000000000D0020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF78787829292911
      1111292929777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFD1D1D1000000000000000000000000000000000000000000A3A3A3FFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF3F3F3F282828B9B9B9DE
      DEDEB9B9B9333333000000000000A3A3A3FFFFFFFFFFFF000000FFFFFFF3F3F3
      515151FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8A8A0000000000
      00FFFFFFFFFFFF000000FFFFFF000000000000838383FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF333333000000777777FFFFFF000000171717000000
      000000000000A6A6A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC0000
      002E2E2EFFFFFF000000F1F1F1101010000000B6B6B6F3F3F3FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF8F8F8F0A0A0A000000000000272727000000FFFFFF2B2B2B
      000000BEBEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0B0B0B0000
      00000000C6C6C6000000FFFFFF777777000000333333FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000939393FFFFFF000000FFFFFFFFFFFF
      0000000000008A8A8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5FFFFFFFAFA
      FAFFFFFFFFFFFF000000FFFFFFFFFFFFA3A3A3000000000000333333B9B9B9DE
      DEDEB9B9B9323232000000D4D4D4FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFA3A3A3000000000000000000000000000000000000000000969696FFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77777729292911
      1111292929777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000}
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnAlterarClick
  end
  object btnDeletar: TbsSkinSpeedButton
    Left = 503
    Top = 63
    Width = 121
    Height = 19
    HintImageIndex = 0
    SkinDataName = 'toolbutton'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    CheckedMode = False
    UseSkinSize = True
    UseSkinFontColor = True
    WidthWithCaption = 0
    WidthWithoutCaption = 0
    ImageIndex = 0
    RepeatMode = False
    RepeatInterval = 100
    Transparent = False
    Flat = False
    AllowAllUp = False
    Down = False
    GroupIndex = 0
    Caption = 'Deletar'
    ShowCaption = True
    Glyph.Data = {
      06030000424D060300000000000036000000280000000F0000000F0000000100
      180000000000D0020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      F6F6F6080808000000000000000000000000000000000000000000080808F6F6
      F6FFFFFFFFFFFF000000FFFFFFFFFFFF8F8F8F00000012121201010100000018
      18180000000101011212120000008F8F8FFFFFFFFFFFFF000000FFFFFFFFFFFF
      7B7B7B000000BCBCBC555555000000FFFFFF000000555555BCBCBC0000007B7B
      7BFFFFFFFFFFFF000000FFFFFFFFFFFF616161000000AEAEAE4D4D4D000000FF
      FFFF0000004D4D4DAEAEAE000000616161FFFFFFFFFFFF000000FFFFFFFFFFFF
      464646000000AEAEAE4D4D4D000000FFFFFF0000004D4D4DAEAEAE0000004646
      46FFFFFFFFFFFF000000FFFFFFFFFFFF2C2C2C000000AEAEAE4D4D4D000000FF
      FFFF0000004D4D4DAEAEAE0000002C2C2CFFFFFFFFFFFF000000FFFFFFFFFFFF
      121212000000AEAEAE4D4D4D000000FFFFFF0000004D4D4DAEAEAE0000001212
      12FFFFFFFFFFFF000000FFFFFFFFFFFF000000000000B3B3B3515151000000FF
      FFFF000000515151B3B3B3000000000000FFFFFFFFFFFF000000FFFFFFFFFFFF
      0000000000007A7A7A2B2B2B000000C3C3C30000002A2A2A7A7A7A0000000000
      00FFFFFFFFFFFF000000FFFFFFFFFFFF42424256565649494950505056565643
      4343565656505050494949565656424242FFFFFFFFFFFF000000FFFFFF9D9D9D
      B5B5B5B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B5B5
      B59D9D9DFFFFFF000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000FFFFFF000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FFFFFF000000FFFFFFFFFFFFCCCCCCD2D2D2D7D7D7000000FFFFFFED
      EDEDFFFFFF000000D7D7D7D2D2D2CCCCCCFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF6C6C6C0000000B0B0B0000006C6C6CFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000}
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnDeletarClick
  end
  object Label2: TLabel
    Left = 57
    Top = 424
    Width = 95
    Height = 17
    Alignment = taCenter
    Caption = 'Filtrar por nome'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object edPesquisa: TbsSkinEdit
    Left = 57
    Top = 63
    Width = 186
    Height = 19
    Text = ''
    DefaultColor = clWindow
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clBlack
    DefaultFont.Height = 13
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    UseSkinFont = True
    DefaultWidth = 0
    DefaultHeight = 0
    ButtonMode = False
    SkinDataName = 'edit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ButtonImageIndex = -1
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
  end
  object edCidade: TbsSkinEdit
    Left = 456
    Top = 120
    Width = 186
    Height = 19
    Text = ''
    DefaultColor = clWindow
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clBlack
    DefaultFont.Height = 13
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    UseSkinFont = True
    DefaultWidth = 0
    DefaultHeight = 0
    ButtonMode = False
    SkinDataName = 'edit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ButtonImageIndex = -1
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
  end
  object tbcidade: TDBGrid
    Left = 57
    Top = 88
    Width = 393
    Height = 297
    DataSource = dsCidades
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = tbcidadeCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ReadOnly = True
        Title.Caption = 'Cidade'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 377
        Visible = True
      end>
  end
  object cbFilNome: TbsSkinComboBox
    Left = 168
    Top = 424
    Width = 75
    Height = 20
    HintImageIndex = 0
    TabOrder = 3
    SkinDataName = 'combobox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 13
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    UseSkinSize = True
    ToolButtonStyle = False
    AlphaBlend = False
    AlphaBlendValue = 0
    AlphaBlendAnimation = False
    ListBoxCaptionMode = False
    ListBoxDefaultFont.Charset = DEFAULT_CHARSET
    ListBoxDefaultFont.Color = clWindowText
    ListBoxDefaultFont.Height = 13
    ListBoxDefaultFont.Name = 'Tahoma'
    ListBoxDefaultFont.Style = []
    ListBoxDefaultCaptionFont.Charset = DEFAULT_CHARSET
    ListBoxDefaultCaptionFont.Color = clWindowText
    ListBoxDefaultCaptionFont.Height = 13
    ListBoxDefaultCaptionFont.Name = 'Tahoma'
    ListBoxDefaultCaptionFont.Style = []
    ListBoxDefaultItemHeight = 20
    ListBoxCaptionAlignment = taLeftJustify
    ListBoxUseSkinFont = True
    ListBoxUseSkinItemHeight = True
    ListBoxWidth = 0
    HideSelection = True
    AutoComplete = True
    ImageIndex = -1
    CharCase = ecNormal
    DefaultColor = clWindow
    Items.Strings = (
      'A-Z'
      'Z-A'
      'A'
      'B'
      'C'
      'D'
      'E'
      'F'
      'G'
      'H'
      'I'
      'J'
      'K'
      'L'
      'M'
      'N'
      'O'
      'P'
      'Q'
      'R'
      'S'
      'T'
      'U'
      'V'
      'W'
      'X'
      'Y'
      'Z')
    ItemIndex = -1
    DropDownCount = 8
    HorizontalExtent = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 13
    Font.Name = 'Tahoma'
    Font.Style = []
    Sorted = False
    Style = bscbFixedStyle
    OnChange = cbFilNomeChange
  end
  object dsCidades: TDataSource
    DataSet = sqlCidade
    Left = 576
    Top = 432
  end
  object sqlCidade: TFDQuery
    Active = True
    Connection = Conexao.Conexao
    SQL.Strings = (
      'SELECT * FROM tb_cidade ORDER BY nome ASC')
    Left = 584
    Top = 352
  end
end
