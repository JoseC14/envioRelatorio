object frmHistorico: TfrmHistorico
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmHistorico'
  ClientHeight = 494
  ClientWidth = 933
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 57
    Top = 8
    Width = 88
    Height = 34
    Alignment = taCenter
    Caption = 'Hist'#243'rico'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Poppins'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnPesquisar: TbsSkinSpeedButton
    Left = 433
    Top = 62
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
  object btnDeletar: TbsSkinSpeedButton
    Left = 560
    Top = 62
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
    Left = 20
    Top = 65
    Width = 74
    Height = 19
    Alignment = taCenter
    Caption = 'Pesquisar por'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Poppins Light'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 25
    Top = 441
    Width = 101
    Height = 17
    Alignment = taCenter
    Caption = 'Filtrar por cidade'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 225
    Top = 441
    Width = 98
    Height = 17
    Alignment = taCenter
    Caption = 'Filtrar por org'#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 553
    Top = 441
    Width = 85
    Height = 17
    Alignment = taCenter
    Caption = 'Filtrar por tipo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object btnLimpaFiltro: TSpeedButton
    Left = 368
    Top = 467
    Width = 105
    Height = 22
    Caption = 'Limpar Filtro'
    Glyph.Data = {
      06030000424D060300000000000036000000280000000F0000000F0000000100
      180000000000D0020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF9F9F93C3C3C3D3D3DFDFDFDFFFFFFFFFFFFFFFFFF000000EFEFEF6C6C6C
      777777777777777777727272999999FFFFFF2020200000000000001616168181
      816C6C6CEFEFEF000000D3D3D30F0F0F1F1F1F1F1F1F1F1F1F1A1A1A474747FF
      FFFF0606060000000000000000002525250F0F0FD3D3D3000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCB000000000000D1D1D1FFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFBDBDBDBBBBBBFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFF4F4F4
      FFFFFF696969000000000000676767FFFFFFFFFFFFF5F5F5F7F7F7F7F7F7F6F6
      F6F4F4F4FFFFFF000000B6B6B6000000000000000000000000000000000000FF
      FFFF000000000000000000000000000000000000B6B6B6000000FFFFFFF4F4F4
      FFFFFF696969000000000000676767FFFFFFFFFFFFF5F5F5F7F7F7F7F7F7F6F6
      F6F4F4F4FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFBDBDBDBBBBBBFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D3D3D0000
      003D3D3DFFFFFF000000D3D3D30F0F0F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
      1F1F0F0F0FD7D7D7B5B5B5000000000000000000B9B9B9000000EFEFEF6C6C6C
      7777777777777777777777777777777777776C6C6CF3F3F3D0D0D00000000000
      00000000D4D4D4000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF949494232323949494FFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000}
    OnClick = btnLimpaFiltroClick
  end
  object edPesquisa: TbsSkinEdit
    Left = 241
    Top = 62
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
  object cbPesquisa: TbsSkinComboBox
    Left = 107
    Top = 62
    Width = 120
    Height = 20
    Hint = 'Selecione'
    HintTitle = 'Selecione'
    HintImageIndex = 0
    TabOrder = 1
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
    ShowHint = True
    CharCase = ecNormal
    DefaultColor = clWindow
    Text = 'Org'#227'o'
    Items.Strings = (
      'Org'#227'o'
      'Cidade'
      'Data do Envio'
      'Tipo de Relat'#243'rio'
      'Usu'#225'rio')
    ItemIndex = 0
    DropDownCount = 8
    HorizontalExtent = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 13
    Font.Name = 'Tahoma'
    Font.Style = []
    Sorted = False
    Style = bscbFixedStyle
  end
  object cbFilNome: TbsSkinComboBox
    Left = 132
    Top = 441
    Width = 75
    Height = 20
    HintImageIndex = 0
    TabOrder = 2
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
  object cbOrgao: TbsSkinComboBox
    Left = 329
    Top = 442
    Width = 209
    Height = 19
    Hint = 'Selecione'
    HintTitle = 'Selecione'
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
    ShowHint = True
    CharCase = ecNormal
    DefaultColor = clWindow
    Text = 'Comutran'
    Items.Strings = (
      'Camara Municipal'
      'Casa do Anci'#227'o'
      'Comutran'
      'Controladoria Geral'
      'Gabinete do Prefeito'
      'IGC'
      'SAAE'
      'Secretaria de Agricultura'
      'Secretaria de Administra'#231'ao'
      'Secretaria Assistencia Social'
      'Secretaria de Cultura'
      'Secretaria de Educa'#231'ao'
      'Secretaria de Esporte'
      'Secretaria de Infra'
      'Secretaria de Meio Ambiente'
      'Secretaria de Obras'
      'Secretaria de Saude'
      'Secretaria de Seguran'#231'a Publica'
      'Procuradoria Geral')
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
    OnChange = cbOrgaoChange
  end
  object cbTipo: TbsSkinComboBox
    Left = 644
    Top = 442
    Width = 130
    Height = 19
    Hint = 'Selecione'
    HintTitle = 'Selecione'
    HintImageIndex = 0
    TabOrder = 4
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
    ShowHint = True
    CharCase = ecNormal
    DefaultColor = clWindow
    Text = 'Comutran'
    Items.Strings = (
      'Ponto'
      'Sincroniza'#231#227'o'
      'Listagem')
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
    OnChange = cbTipoChange
  end
  object tbhistorico: TDBGrid
    Left = 25
    Top = 104
    Width = 736
    Height = 310
    DataSource = dsHistorico
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = tbhistoricoCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'cidade'
        Title.Caption = 'Cidade'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'orgao'
        Title.Caption = 'Org'#227'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 212
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipo'
        Title.Caption = 'Tipo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dataenvio'
        Title.Caption = 'Data de Envio'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'usuario'
        Title.Caption = 'Usu'#225'rio'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 134
        Visible = True
      end>
  end
  object dsHistorico: TDataSource
    DataSet = sqlHistorico
    Left = 760
    Top = 24
  end
  object sqlHistorico: TFDQuery
    Active = True
    Connection = Conexao.Conexao
    SQL.Strings = (
      'SELECT tb_historico.id,tb_historico.cidade,tb_historico.orgao,'
      
        'tb_historico.tipo,tb_historico.dataenvio,tb_user.usuario FROM tb' +
        '_historico'
      
        'INNER JOIN tb_user ON tb_historico.idusuario = tb_user.id ORDER ' +
        'BY '
      'datahoraenvio DESC')
    Left = 696
    Top = 24
    object sqlHistoricoid: TIntegerField
      FieldName = 'id'
    end
    object sqlHistoricocidade: TWideStringField
      FieldName = 'cidade'
      Size = 255
    end
    object sqlHistoricoorgao: TWideStringField
      FieldName = 'orgao'
      Size = 255
    end
    object sqlHistoricotipo: TWideStringField
      FieldName = 'tipo'
      Size = 255
    end
    object sqlHistoricodataenvio: TWideStringField
      FieldName = 'dataenvio'
      Size = 255
    end
    object sqlHistoricousuario: TWideStringField
      FieldName = 'usuario'
      Size = 255
    end
  end
end
