object FVenda: TFVenda
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pedido'
  ClientHeight = 378
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 626
    Height = 72
    Align = alTop
    TabOrder = 0
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 534
      Height = 64
      Align = alClient
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 298
        Top = 10
        Width = 65
        Height = 13
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10485760
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtProduto: TLabel
        Left = 8
        Top = 10
        Width = 45
        Height = 13
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10485760
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 375
        Top = 10
        Width = 77
        Height = 13
        Caption = 'Valor Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10485760
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 461
        Top = 10
        Width = 61
        Height = 13
        Caption = 'Valor Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10485760
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtQuantidade: TEdit
        Left = 298
        Top = 29
        Width = 65
        Height = 21
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumbersOnly = True
        ParentFont = False
        TabOrder = 2
        OnChange = txtQuantidadeChange
      end
      object txtcodProduto: TEdit
        Left = 8
        Top = 29
        Width = 217
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnKeyDown = txtcodProdutoKeyDown
      end
      object txtValorUnitario: TEdit
        Left = 375
        Top = 29
        Width = 68
        Height = 21
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object txtValorTot: TEdit
        Left = 461
        Top = 29
        Width = 65
        Height = 21
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object btnPesquisaProduto: TButton
        Left = 225
        Top = 29
        Width = 50
        Height = 22
        Caption = 'Pesquisa'
        TabOrder = 1
        OnClick = btnPesquisaProdutoClick
      end
    end
    object btnIncluir: TButton
      AlignWithMargins = True
      Left = 544
      Top = 4
      Width = 78
      Height = 64
      Align = alRight
      Caption = 'Incluir'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnIncluirClick
    end
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 81
    Width = 626
    Height = 230
    Align = alClient
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      626
      230)
    object cGrid: TVirtualStringTree
      Left = 3
      Top = 16
      Width = 540
      Height = 214
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Header.AutoSizeIndex = 0
      Header.Background = clSilver
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Header.Options = [hoColumnResize, hoDrag, hoShowSortGlyphs, hoVisible]
      ParentFont = False
      TabOrder = 0
      TreeOptions.SelectionOptions = [toFullRowSelect]
      OnGetText = cGridGetText
      Columns = <
        item
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment]
          Position = 0
          Width = 270
          WideText = 'Produto'
        end
        item
          Alignment = taRightJustify
          CaptionAlignment = taCenter
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment]
          Position = 1
          Width = 80
          WideText = 'Quantidade'
        end
        item
          Alignment = taRightJustify
          CaptionAlignment = taCenter
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment]
          Position = 2
          Width = 90
          WideText = 'Valor Unit'#225'rio'
        end
        item
          Alignment = taRightJustify
          CaptionAlignment = taCenter
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment]
          Position = 3
          Width = 80
          WideText = 'Valor Total'
        end>
      WideDefaultText = ''
    end
    object btnCancelar: TButton
      Left = 549
      Top = 127
      Width = 72
      Height = 57
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnExluir: TButton
      Left = 549
      Top = 47
      Width = 72
      Height = 57
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 317
    Width = 626
    Height = 58
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Panel5: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 478
      Height = 50
      Align = alClient
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object lblSubTotal: TLabel
        Left = 316
        Top = 10
        Width = 144
        Height = 33
        Alignment = taRightJustify
        Caption = 'SUBTOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl1: TLabel
        Left = 8
        Top = 10
        Width = 88
        Height = 33
        Alignment = taRightJustify
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object btnFinalizar: TButton
      AlignWithMargins = True
      Left = 488
      Top = 4
      Width = 134
      Height = 50
      Align = alRight
      Caption = 'Finalizar'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnFinalizarClick
    end
  end
end
