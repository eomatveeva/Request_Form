<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MainPage.aspx.vb" Inherits="Request_Form.MainPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/Style.css" rel="stylesheet" />
    <title>Заявочная форма</title>
</head>
<body>
    <div class="container">
        <form id="RequestForm" runat="server">
            <div class="row">
                <div class="form-group">
                    <img class="img-container" src="Image/Logo_eng_A4_album.png" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="Creator">Инициатор заявки</label>
                        <asp:TextBox class="form-control" ID="Creator" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="CreationDate">Дата создания заявки</label>
                        <asp:TextBox class="form-control" ID="CreationDate" runat="server" ReadOnly="true"></asp:TextBox>
                    </div>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-12">
                    <h3><strong>Параметры заявки</strong></h3>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="InvoiceDate">Дата выставления счета</label>
                        <asp:TextBox class="form-control" ID="InvoiceDate" runat="server" TextMode="Date"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="ConterAgent">Контрагент</label>
                        <asp:TextBox class="form-control" ID="ConterAgent" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="Amount">Сумма к оплате</label>
                        <asp:TextBox class="form-control" ID="Amount" runat="server" TextMode="Number"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="Invoice">Номер счета</label>
                        <asp:TextBox class="form-control" ID="Invoice" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="Payer">Плательщик</label>
                        <asp:TextBox class="form-control" ID="Payer" runat="server"></asp:TextBox>
                    </div>
                    <div class="row">

                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="Currency">Валюта оплаты</label>
                                <asp:DropDownList class="form-control" ID="Currency" runat="server">
                                    <asp:ListItem Value="р"> р</asp:ListItem>
                                    <asp:ListItem Value="е"> е </asp:ListItem>
                                    <asp:ListItem Value="д"> д</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="PaymentMethod">Способ оплаты</label>
                                <asp:DropDownList class="form-control" ID="PaymentMethod" runat="server">
                                    <asp:ListItem Value="бн"> бн </asp:ListItem>
                                    <asp:ListItem Value="н"> е </asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="Details">Назначение платежа</label>
                        <asp:TextBox class="form-control" ID="Details" TextMode="MultiLine" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="Department">Подразделение</label>
                        <asp:DropDownList class="form-control" ID="Department" runat="server" AutoPostBack="True" >
                            <asp:ListItem Value="Бэк-офис"> Бэк-офис </asp:ListItem>
                            <asp:ListItem Value="Производство"> Производство </asp:ListItem>
                        </asp:DropDownList>
                        
                    </div>
                    <div class="form-group">
                        <label for="CostCentr">ЦФО</label>
                        <asp:DropDownList class="form-control" ID="CostCentr" runat="server" AutoPostBack="True" >
                        </asp:DropDownList>

                    </div>
                    <div class="form-group">
                        <label for="Project">Проект</label>
                        <asp:TextBox class="form-control" ID="Project" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="TextBox11">Статья бюджета</label>
                        <asp:TextBox class="form-control" ID="BudgetItem" runat="server"></asp:TextBox>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="Budget">Бюджетность</label>
                                <asp:DropDownList class="form-control" ID="Budget" runat="server">
                                    <asp:ListItem Value="да"> В бюджете </asp:ListItem>
                                    <asp:ListItem Value="внебюджет"> Вне/сверхбюджета </asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="InPlan">Наличие в плане платежей</label>
                                <asp:DropDownList class="form-control" ID="InPlan" runat="server">
                                    <asp:ListItem Value="в ПП"> В плане платежей </asp:ListItem>
                                    <asp:ListItem Value="не в ПП"> Вне плана платежей </asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="checkbox-inline">
                                <label>
                                    <input type="checkbox" value="">
                                    Требуется согласование
                                </label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="checkbox-inline">
                                <label>
                                    <input type="checkbox" value="">
                                    Срочная оплата
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-offset-4 col-md-8">
                            <div class="form-group">
                                <label class="btn btn-success form-control">
                                    <span>Прикрепить файл</span>
                                    <input type="file" style="display: none;">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="TextBox12">Комментарий</label>
                        <asp:TextBox class="form-control" ID="Comment" TextMode="MultiLine" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-offset-2 col-md-4">
                    <div class="form-group">
                        <asp:Button class="btn btn-primary form-control">Отправить на заявку на оплату</asp:Button>
                    </div>

                </div>
                <div class="col-md-offset-2 col-md-4">
                    <div class="form-group">
                        <asp:button runat="server" class="btn btn-danger form-control" id="ClearForm" Text="Очистить форму" >
                        </asp:button>
                    </div>
                </div>
            </div>

        </form>
    </div>

</body>
</html>
