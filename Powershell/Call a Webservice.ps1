
function get_ws_dmif_RemDMIFLisProd {
    param ([string] $pv_nip, [string] $pv_nuc)

    $svc = new-webserviceproxy -UseDefaultCredential -Uri "http://blabla?wsdl" -Class dmif # -Namespace webservice

    # $svc | Get-Member -MemberType Method | Out-GridView


    $type = $svc.GetType().Namespace
    #
    $request = New-Object ($type + ".metodo_a_chamar")

    $request.parametro_de_entrada          = "valor"
    

    # ################################################

    $res = $svc.metodo_a_chamar($request) | Select -ExpandProperty "Mensagem" # "nProdutos"

    write-host ($res )
                                                                      # | Out-GridView # | Select -ExpandProperty ""

}



# Microsoft.PowerShell.Commands.NewWebserviceProxy.AutogeneratedTypes.WebServiceProxy3MIFService_TestEngine_svc_wsdl.RemDMIFLisProdInput
get_ws_dmif_RemDMIFLisProd -pv_nip "5101173" -pv_nuc "5171094"
