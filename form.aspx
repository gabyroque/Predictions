<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form.aspx.cs"
    Inherits="IdcLatin.form" Culture="auto" meta:resourcekey="PageResource1"
    UICulture="auto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .form_input_text
        {
            border-right: #34a9dd 1px solid;
            border-top: #34a9dd 1px solid;
            font-size: 9pt;
            border-left: #34a9dd 1px solid;
            color: #515151;
            border-bottom: #34a9dd 1px solid;
            font-family: Verdana, Arial, Helvetica, sans-serif;
            vertical-align: middle;
            background-color: #FFFFFF;
            width: 400px;
        }
        .texto_form
        {
            font-size: 9pt;
            color: #515151;
            font-family: Verdana, Arial, Helvetica, sans-serif;
            vertical-align: top;
            font-weight: bold;
            text-align: right;
            background-color: #f4f4f4;
        }
        .message
        {
            font-size: 9pt;
            color: #fc1414;
            font-family: Verdana, Arial, Helvetica, sans-serif;
            vertical-align: middle;
            font-weight: bold;
            text-align: left;
        }
        .textarea
        {
            border-right: #34a9dd 1px solid;
            border-top: #34a9dd 1px solid;
            font-size: 8pt;
            border-left: #34a9dd 1px solid;
            color: #515151;
            line-height: 12px;
            border-bottom: #34a9dd 1px solid;
            font-family: Verdana, Arial, Helvetica, sans-serif;
            vertical-align: middle;
            background-color: #FFFFFF;
            width: 500px;
        }
        .text_mkt_size_7
        {
            font-size: 9pt;
            color: #105ea9;
            line-height: 14px;
            font-family: Verdana, Geneva, sans-serif;
            text-decoration: none;
        }
        .text_question
        {
            font-size: 9pt;
            color: #105ea9;
            line-height: 14px;
            font-family: Verdana, Geneva, sans-serif;
            text-decoration: none;
            font-weight: bold;
        }
        .text_answer
        {
            font-size: 9pt;
            color: #535455;
            line-height: 14px;
            font-family: Verdana, Geneva, sans-serif;
            text-decoration: none;
            font-weight: normal;
        }
        .form_button
        {
            font-weight: bold;
            border-top: #34a9dd 1px solid;
            font-size: 11px;
            border-bottom: #34a9dd 1px solid;
            font-family: Verdana, Arial, Helvetica, sans-serif;
            vertical-align: middle;
            text-align: center;
            background-color: #073c77;
            height: 30px;
            color: #FFFFFF;
        }
    </style>

    <script type="text/javascript" language="javascript">
        function SetSingleRadioButton(nameregex, current) {

            re = new RegExp(nameregex);
            for (i = 0; i < document.forms[0].elements.length; i++) {
                elm = document.forms[0].elements[i];

                if ((elm.type == 'radio') && (elm.defaultValue == current.defaultValue)) {

                    if ((elm != current) && (elm.defaultValue == current.defaultValue)) {
                        elm.checked = false;
                    }
                }
            }
            current.checked = true;
        }

        function onDownload(dataToDownload) {
            //window.open(dataToDownload);
            location.href = dataToDownload;
        } 
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <table border="0" align="center" cellspacing="0" width="650" bgcolor="#ffffff" cellpadding="0"
        style="border-style: solid; border-width: 1px; border-color: #028cd3;">
        <tr>
            <td colspan="2" align="center">
                <img src="http://www.idclatin.com/campaign/infobrief/es/2014/kony/images/emkt_esp_14_kony_financial_1_01.jpg"
                    width="650" height="116" alt="">
            </td>
        </tr>
        <tr>
            <td>
                <table border="0" align="center" cellpadding="0" cellspacing="0" width="600">
                    <tr>
                        <td>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p align="center">
                                <font face="Arial, Helvetica, sans-serif" size="3" color="#424343"><strong>xxx </strong>
                                </font>
                            </p>
                            <p>
                                <font face="Arial, Helvetica, sans-serif" size="2" color="#424343">&bull;xxx</font></p>
                            <p>
                                <font face="Arial, Helvetica, sans-serif" size="2" color="#424343">•xxx </font>
                            </p>
                            <p align="center">
                                xxx</p>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <%--<tr>
            <td>
                <table border="0" cellpadding="0" cellspacing="0" width="100%" align="center">
                    <tr>
                        <td bgcolor="#028cd3" width="9" height="97">
                        </td>
                        <td colspan="3" bgcolor="#028cd3">
                            <img src="http://www.idclatin.com/campaign/case_study/es/2014/kony/images/emkt_mex_14_kony_farmatodo_1_04.jpg"
                                width="198" height="97" alt="">
                        </td>
                        <td colspan="2" width="421" height="97" bgcolor="#028cd3" align="right">
                            <font face="Arial, Helvetica, sans-serif" size="4" color="#ffffff"><strong>&iquest;Sabe
                                usted c&oacute;mo el uso de la movilidad empresarial puede llevarlo a &ldquo;fidelizar&rdquo;
                                clientes y aumentar las ventas?</strong></font>
                        </td>
                        <td bgcolor="#028cd3" width="22" height="97">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>--%>
        <tr runat="server" id="tr_message">
            <td colspan="2" style="text-align: center">
                <asp:Label ID="lbl_unavailable_campaign" runat="server" meta:resourcekey="lbl_unavailable_campaignResource1"></asp:Label>
            </td>
        </tr>
        <tr runat="server" id="tr_message_saved">
            <td colspan="2" style="text-align: center">
                <asp:Label ID="lbl_success_register" runat="server" meta:resourcekey="lbl_success_registerResource1"></asp:Label>
            </td>
        </tr>
        <tr runat="server" id="tr_fields" visible="true">
            <td width="650">
                <table id="form" border="0" cellspacing="4" cellpadding="4" width="650" align="center"
                    bgcolor="#FFFFFF">
                    <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td width="150" class="texto_form">
                            <asp:Label ID="lbl_Company" runat="server" meta:resourcekey="lbl_CompanyResource1">
                            </asp:Label>
                        </td>
                        <td width="400" bgcolor="f4f4f4" valign="middle">
                            <asp:TextBox ID="txt_company" runat="server" CssClass="form_input_text" meta:resourcekey="txt_companyResource1"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="rfv_Company" runat="server" ControlToValidate="txt_company"
                                CssClass="message" meta:resourcekey="rfv_CompanyResource1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td width="150" class="texto_form" valign="middle">
                            <asp:Label ID="lbl_Name" runat="server" meta:resourcekey="lbl_NameResource1">
                            </asp:Label>
                        </td>
                        <td width="400" bgcolor="f4f4f4">
                            <asp:TextBox ID="txt_name" runat="server" CssClass="form_input_text" meta:resourcekey="txt_nameResource1"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="rfv_Name" runat="server" ControlToValidate="txt_name"
                                CssClass="message" meta:resourcekey="rfv_NameResource1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td width="150" class="texto_form" valign="middle">
                            <asp:Label ID="lbl_second_name" runat="server" meta:resourcekey="lbl_second_nameResource1">
                            </asp:Label>
                        </td>
                        <td width="400" bgcolor="f4f4f4">
                            <asp:TextBox ID="txt_lastName" runat="server" CssClass="form_input_text" meta:resourcekey="txt_lastNameResource1"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="rfv_lastName" runat="server" ControlToValidate="txt_lastName"
                                CssClass="message" meta:resourcekey="rfv_lastNameResource1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td width="150" class="texto_form" valign="middle">
                            <asp:Label ID="lbl_job_title" runat="server" meta:resourcekey="lbl_job_titleResource1">
                            </asp:Label>
                        </td>
                        <td width="400" bgcolor="f4f4f4">
                            <asp:TextBox ID="txt_title" runat="server" CssClass="form_input_text" meta:resourcekey="txt_titleResource1"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="rfv_title" runat="server" ControlToValidate="txt_title"
                                CssClass="message" meta:resourcekey="rfv_titleResource1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td width="150" class="texto_form" valign="middle">
                            <asp:Label ID="lbl_email" runat="server" meta:resourcekey="lbl_emailResource1">
                            </asp:Label>
                        </td>
                        <td width="400" bgcolor="f4f4f4">
                            <asp:TextBox ID="txt_eMail" runat="server" CssClass="form_input_text" meta:resourcekey="txt_eMailResource1"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="rfv_Email" runat="server" ControlToValidate="txt_eMail"
                                CssClass="message" meta:resourcekey="rfv_EmailResource1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td width="150" class="texto_form" valign="middle">
                            <asp:Label ID="lbl_phone" runat="server" meta:resourcekey="lbl_phoneResource1">
                            </asp:Label>
                        </td>
                        <td width="400" bgcolor="f4f4f4">
                            <asp:TextBox ID="txt_phone" runat="server" CssClass="form_input_text" meta:resourcekey="txt_phoneResource1"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="rfv_Phone" runat="server" ControlToValidate="txt_phone"
                                CssClass="message" meta:resourcekey="rfv_PhoneResource1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td width="150" class="texto_form" valign="middle">
                            <asp:Label ID="lbl_country" runat="server" meta:resourcekey="lbl_countryResource1">
                            </asp:Label>
                        </td>
                        <td width="400" bgcolor="f4f4f4">
                            <asp:DropDownList runat="server" ID="ddl_Country" CssClass="form_input_text" meta:resourcekey="ddl_CountryResource1">
                            </asp:DropDownList>
                            <br />
                            <asp:RequiredFieldValidator ID="rfv_Country" runat="server" ControlToValidate="ddl_Country"
                                CssClass="message" InitialValue="--" meta:resourcekey="rfv_CountryResource1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td width="150" class="texto_form" valign="middle">
                            <asp:Label ID="lbl_city" runat="server" meta:resourcekey="lbl_cityResource1">
                            </asp:Label>
                        </td>
                        <td width="400" bgcolor="f4f4f4">
                            <asp:TextBox ID="txt_city" runat="server" CssClass="form_input_text" meta:resourcekey="txt_cityResource1"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="rfv_City" runat="server" ControlToValidate="txt_phone"
                                CssClass="message" meta:resourcekey="rfv_CityResource1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr bgcolor="f4f4f4">
                        <td colspan="2" style="vertical-align: middle; width: 650px;">
                            <table runat="server" id="tr_questions" width="100%" cellpadding="3" cellspacing="6"
                                border="0">
                                <tr>
                                    <td>
                                        <asp:Table ID="tbl_Questions" runat="server" OnDataBinding="tbl_Questions_DataBinding"
                                            Width="100%" meta:resourcekey="tbl_QuestionsResource1">
                                        </asp:Table>
                                        <asp:GridView ID="grd_Questions" runat="server" AutoGenerateColumns="False" Width="100%"
                                            OnRowDataBound="grd_Questions_RowDataBound" meta:resourcekey="grd_QuestionsResource1">
                                            <Columns>
                                                <asp:TemplateField meta:resourcekey="TemplateFieldResource1">
                                                    <ItemTemplate>
                                                        <asp:HiddenField ID="hf_QuestionID" runat="server" />
                                                        <asp:Label ID="lbl_Question" runat="server" CssClass="text_question" meta:resourcekey="lbl_QuestionResource1" />
                                                        <asp:HiddenField ID="hf_Answer" runat="server" Value='<%# Eval("id") %>' />
                                                        <asp:RadioButtonList ID="rb_Option" runat="server" CssClass="text_answer" meta:resourcekey="rb_OptionResource1" />
                                                        <asp:Label ID="lbl_Message" runat="server" CssClass="message" Text="Por favor seleccione una opción"
                                                            Visible="False" meta:resourcekey="lbl_MessageResource1"></asp:Label>
                                                        <br />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr align="center">
                        <td colspan="2">
                            <asp:Button runat="server" ID="btn_Save" CssClass="form_button" Text="Download!"
                                meta:resourcekey="btn_SaveResource1" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <%-- <tr>
            <td align="right" height="100">
                <img src="http://www.idclatin.com/campaign/case_study/es/2014/kony/images/emkt_mex_14_kony_farmatodo_1_42.jpg"
                    width="158" height="86" alt="">
            </td>
        </tr>--%>
    </table>
    </form>
</body>
</html>
