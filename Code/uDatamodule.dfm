object dmSpinnerDemo: TdmSpinnerDemo
  Height = 480
  Width = 640
  object fdtblArchers: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'ArcherName'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ArcherPoints'
        DataType = ftInteger
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 304
    Top = 224
    Content = {
      4144425310000000B8010000FF00010001FF02FF03040016000000460044004D
      0065006D005400610062006C0065003100050016000000460044004D0065006D
      005400610062006C0065003100060000000000070000080032000000090000FF
      0AFF0B0400140000004100720063006800650072004E0061006D006500050014
      0000004100720063006800650072004E0061006D0065000C00010000000E000D
      000F002800000010000111000112000113000114000115000116001400000041
      00720063006800650072004E0061006D006500170028000000FEFF0B04001800
      000041007200630068006500720050006F0069006E0074007300050018000000
      41007200630068006500720050006F0069006E00740073000C00020000000E00
      1800100001110001120001130001140001150001160018000000410072006300
      68006500720050006F0069006E0074007300FEFEFF19FEFF1AFEFF1BFF1C1D00
      00000000FF1E00000A0000004A656E73204675646765010067000000FEFEFF1C
      1D0001000000FF1E00000F0000004B656E2D49636869204E6973686969010064
      000000FEFEFEFEFEFF1FFEFF20210004000000FF22FEFEFE0E004D0061006E00
      61006700650072001E0055007000640061007400650073005200650067006900
      730074007200790012005400610062006C0065004C006900730074000A005400
      610062006C00650008004E0061006D006500140053006F007500720063006500
      4E0061006D0065000A0054006100620049004400240045006E0066006F007200
      6300650043006F006E00730074007200610069006E00740073001E004D006900
      6E0069006D0075006D0043006100700061006300690074007900180043006800
      650063006B004E006F0074004E0075006C006C00140043006F006C0075006D00
      6E004C006900730074000C0043006F006C0075006D006E00100053006F007500
      7200630065004900440018006400740041006E00730069005300740072006900
      6E0067001000440061007400610054007900700065000800530069007A006500
      1400530065006100720063006800610062006C006500120041006C006C006F00
      77004E0075006C006C000800420061007300650014004F0041006C006C006F00
      77004E0075006C006C0012004F0049006E005500700064006100740065001000
      4F0049006E00570068006500720065001A004F0072006900670069006E004300
      6F006C004E0061006D006500140053006F007500720063006500530069007A00
      65000E006400740049006E007400330032001C0043006F006E00730074007200
      610069006E0074004C00690073007400100056006900650077004C0069007300
      74000E0052006F0077004C00690073007400060052006F0077000A0052006F00
      77004900440010004F0072006900670069006E0061006C001800520065006C00
      6100740069006F006E004C006900730074001C00550070006400610074006500
      73004A006F00750072006E0061006C001200530061007600650050006F006900
      6E0074000E004300680061006E00670065007300}
  end
end