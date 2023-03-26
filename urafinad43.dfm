object Form1: TForm1
  Left = 192
  Top = 123
  Width = 939
  Height = 306
  Caption = 'Rafinad 4.3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 12
    Top = 0
    Width = 897
    Height = 235
    Caption = 'Panel1'
    Color = 14544605
    TabOrder = 0
    object Memo1: TMemo
      Left = 8
      Top = 8
      Width = 385
      Height = 217
      Lines.Strings = (
        '<!DOCTYPE html>'
        '<html>'
        '<head>'
        '<title>'#1055#1088#1080#1074#1077#1090' WebGL!</title>'
        ''
        '<script src="three.js"></script>'
        '<script type='#39'text/javascript'#39'>'
        'window.onload=function(){'
        #160#160#160#160'var camera, scene, renderer;'
        #160#160#160#160'var geometry, material, mesh;'
        #160
        #160#160#160#160'init();'
        #160#160#160#160'animate();'
        #160#160#160#160'// '#1080#1085#1080#1094#1080#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072#1095#1072#1083#1100#1085#1099#1093' '#1079#1085#1072#1095#1077#1085#1080#1081
        #160#160#160#160'function init() {'
        #160#160#160#160#160#160#160#160'// '#1089#1086#1079#1076#1072#1077#1084' '#1082#1072#1084#1077#1088#1091' - '#1087#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1072#1103' '#1087#1088#1086#1077#1082#1094#1080#1103
        
          #160#160#160#160#160#160#160#160'camera = new THREE.PerspectiveCamera(75, window.innerWid' +
          'th / window.innerHeight, 1, 1000);'
        #160#160#160#160#160#160#160#160'// '#1091#1089#1090#1072#1085#1086#1074#1082#1072' z-'#1082#1086#1086#1088#1076#1080#1085#1072#1090#1099' '#1082#1072#1084#1077#1088#1099
        #160#160#160#160#160#160#160#160'camera.position.z = 600;'
        #160#160#160#160#160#160#160#160'// '#1085#1072#1089#1090#1088#1086#1081#1082#1072' '#1089#1094#1077#1085#1099
        #160#160#160#160#160#160#160#160'scene = new THREE.Scene();'
        #160#160#160#160#160#160#160#160'// '#1085#1072#1089#1090#1088#1086#1081#1082#1072' '#1075#1077#1086#1084#1077#1090#1088#1080#1080' - '#1074' '#1082#1072#1095#1077#1089#1090#1074#1077' '#1075#1077#1086#1084#1077#1090#1088#1080#1080' '#1073#1091#1076#1077#1090' '#1082#1091#1073
        #160#160#160#160#160#160#160#160'// '#1085#1072#1089#1090#1088#1086#1080#1084' '#1077#1075#1086' '#1096#1080#1088#1080#1085#1091', '#1074#1099#1089#1086#1090#1091' '#1080' '#1076#1083#1080#1085#1091' '#1087#1086' '#1086#1089#1080' z'
        #160#160#160#160#160#160#160#160'geometry = new THREE.CubeGeometry(200, 200, 200);'
        #160#160#160#160#160#160#160#160'// '#1085#1072#1089#1090#1088#1086#1081#1082#1072' '#1084#1072#1090#1077#1088#1080#1072#1083#1072' - '#1091#1089#1090#1072#1085#1086#1074#1082#1072' '#1094#1074#1077#1090#1072
        
          #160#160#160#160#160#160#160#160'material = new THREE.MeshBasicMaterial({ color: 0xff0000' +
          ', wireframe: true});'
        #160#160#160#160#160#160#160#160'// '#1085#1072#1089#1090#1088#1072#1080#1074#1072#1077#1084' '#1084#1077#1096', '#1082#1086#1090#1086#1088#1099#1081' '#1073#1091#1076#1077#1090' '#1086#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1082#1091#1073
        #160#160#160#160#160#160#160#160'mesh = new THREE.Mesh(geometry, material);'
        #160#160#160#160#160#160#160#160'scene.add(mesh);'
        #160#160#160#160#160#160#160#160'// '#1089#1086#1079#1076#1072#1077#1084' '#1086#1073#1098#1077#1082#1090' '#1076#1083#1103' '#1088#1077#1085#1076#1077#1088#1080#1085#1075#1072' '#1089#1094#1077#1085#1099
        #160#160#160#160#160#160#160#160'renderer = new THREE.WebGLRenderer();'
        #160#160#160#160#160#160#160#160'// '#1091#1089#1090#1072#1085#1086#1074#1082#1072' '#1088#1072#1079#1084#1077#1088#1086#1074
        #160#160#160#160#160#160#160#160'renderer.setSize(window.innerWidth, window.innerHeight);'
        #160#160#160#160#160#160#160#160'// '#1074#1089#1090#1088#1072#1080#1074#1072#1077#1084' '#1074' DOM-'#1089#1090#1088#1091#1082#1090#1091#1088#1091' '#1089#1090#1088#1072#1085#1080#1094#1099
        #160#160#160#160#160#160#160#160'document.body.appendChild(renderer.domElement);'
        #160#160#160#160'}'
        #160#160#160#160'// '#1092#1091#1085#1082#1094#1080#1103' '#1072#1085#1080#1084#1072#1094#1080#1080
        #160#160#160#160'function animate() {'
        #160
        #160#160#160#160#160#160#160#160'requestAnimationFrame(animate);'
        #160#160#160#160#160#160#160#160'// '#1074#1088#1072#1097#1077#1085#1080#1077' '#1084#1077#1096#1072' '#1074#1086#1082#1088#1091#1075' '#1086#1089#1077#1081
        #160#160#160#160#160#160#160#160'mesh.rotation.x += 0.01;'
        #160#160#160#160#160#160#160#160'mesh.rotation.y += 0.02;'
        
          #160#160#160#160#160#160#160#160'// '#1088#1077#1085#1076#1077#1088#1080#1085#1075' '#1089#1094#1077#1085#1099' - '#1084#1077#1090#1086#1076', '#1087#1088#1086#1080#1079#1074#1086#1076#1103#1097#1080#1081' '#1087#1086' '#1089#1091#1090#1080' '#1086#1090#1088#1080#1089#1086#1074 +
          #1082#1091
        #160#160#160#160#160#160#160#160'renderer.render(scene, camera);'
        #160#160#160#160'}'
        '}'
        '</script>'
        '</head>'
        '<body>'
        '</body>'
        '</html>')
      ScrollBars = ssVertical
      TabOrder = 0
      WordWrap = False
    end
    object Memo3: TMemo
      Left = 480
      Top = 8
      Width = 409
      Height = 217
      ScrollBars = ssVertical
      TabOrder = 1
      WordWrap = False
    end
    object Button15: TButton
      Left = 400
      Top = 72
      Width = 73
      Height = 25
      Caption = 'Button15'
      TabOrder = 2
      OnClick = Button15Click
    end
    object Button16: TButton
      Left = 488
      Top = 192
      Width = 75
      Height = 25
      Caption = 'clipbrd'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button16Click
    end
    object Button17: TButton
      Left = 312
      Top = 16
      Width = 75
      Height = 25
      Caption = 'clear'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Button17Click
    end
    object CheckBox1: TCheckBox
      Left = 400
      Top = 40
      Width = 80
      Height = 25
      Caption = 'add $0D'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object CheckBox2: TCheckBox
      Left = 400
      Top = 104
      Width = 80
      Height = 25
      Caption = '&&lt; &&gt;'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 6
    end
    object Button1: TButton
      Left = 312
      Top = 192
      Width = 75
      Height = 25
      Caption = 'paste'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = Button1Click
    end
    object CheckBox3: TCheckBox
      Left = 400
      Top = 160
      Width = 80
      Height = 41
      Caption = 'left nbsp'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object CheckBox4: TCheckBox
      Left = 400
      Top = 200
      Width = 80
      Height = 33
      Caption = 'left em'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object CheckBox5: TCheckBox
      Left = 400
      Top = 16
      Width = 80
      Height = 17
      Caption = '<br>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object CheckBox6: TCheckBox
      Left = 400
      Top = 136
      Width = 80
      Height = 25
      Caption = '{ }'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
  end
  object MainMenu1: TMainMenu
    Left = 240
    Top = 64
    object symboltobuff1: TMenuItem
      Caption = 'symbol to buff'
      object Em1: TMenuItem
        Caption = 'Em '#1087#1088#1086#1073#1077#1083
        OnClick = Em1Click
      end
      object N1: TMenuItem
        Caption = #1090#1077#1083#1077#1092#1086#1085
        OnClick = N1Click
      end
      object N2: TMenuItem
        Caption = #1089#1077#1088#1076#1094#1077
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1075#1072#1083#1082#1072
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1089#1086#1083#1085#1094#1077
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1079#1074#1077#1079#1076#1072
        OnClick = N5Click
      end
      object N6: TMenuItem
        Caption = #1079#1086#1085#1090
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1082#1086#1085#1100
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = #1080#1085#1100#1103#1085#1100
        OnClick = N8Click
      end
      object N9: TMenuItem
        Caption = #1089#1077#1088#1087' '#1080' '#1084#1086#1083#1086#1090
        OnClick = N9Click
      end
      object N10: TMenuItem
        Caption = #1088#1072#1076#1080#1072#1094#1080#1103
        OnClick = N10Click
      end
      object N11: TMenuItem
        Caption = #1073#1077#1089#1082#1086#1085#1077#1095#1085#1086#1089#1090#1100
        OnClick = N11Click
      end
      object N12: TMenuItem
        Caption = #1089#1085#1077#1078#1080#1085#1082#1072
        OnClick = N12Click
      end
      object N13: TMenuItem
        Caption = #1085#1086#1090#1099
        OnClick = N13Click
      end
      object N14: TMenuItem
        Caption = #1088#1091#1073#1083#1100
        OnClick = N14Click
      end
    end
    object picmailru1: TMenuItem
      Caption = 'pic mail.ru'
      object N15: TMenuItem
        Caption = #1088#1091#1082#1086#1087#1086#1078#1072#1090#1080#1077
        OnClick = N15Click
      end
      object N16: TMenuItem
        Caption = #1089#1084#1077#1096#1085#1086#1081' '#1091#1088#1086#1076
        OnClick = N16Click
      end
      object N17: TMenuItem
        Caption = #1073#1100#1102#1089#1100' '#1086#1073' '#1089#1100#1077#1085#1091
        OnClick = N17Click
      end
      object N18: TMenuItem
        Caption = #1080#1076#1077#1103
        OnClick = N18Click
      end
      object N19: TMenuItem
        Caption = #1072#1087#1083#1086#1076#1080#1088#1091#1102
        OnClick = N19Click
      end
    end
    object here1: TMenuItem
      Caption = 'here'
      object here2: TMenuItem
        Caption = 'here'
        OnClick = here2Click
      end
    end
  end
end
