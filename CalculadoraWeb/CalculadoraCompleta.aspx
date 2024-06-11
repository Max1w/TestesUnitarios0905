<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CalculadoraCompleta.aspx.cs" Inherits="CalculadoraWeb.CalculadoraCompleta" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        input[type="submit"] {
            width: 60px;
            height: 60px;
        }

        .error {
            font-weight: bold;
            color: red;
        }
    </style>
    <h1>Calculadora Completa

    </h1>
    <div class="row">
        <div class="col">
            <asp:Label runat="server" ID="ErroLabel" CssClass="error"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col">
            Primeiro:
			<asp:Label runat="server" ID="PrimeiroNumeroLabel"></asp:Label>
        </div>
    </div>
    <div class="row m-2">
        <div class="row m-2">
            <div class="col">
                Atual:
			<asp:Label runat="server" ID="NumeroAtualLabel" Text="0"></asp:Label>
                <input type="hidden" runat="server" id="NumeroAtualHidden" value="0" />
            </div>
        </div>
        <div class="row m-2">
            <div class="col-1">
            </div>
            <div class="col-1">
                <asp:Button runat="server" ID="OperacaoCEButton" Text="CE" CssClass="btn btn-primary btn-lg" OnClick="OperacaoCEButton_Click" />
            </div>
            <div class="col-1">
                <asp:Button runat="server" ID="OperacaoCButton" Text="C" CssClass="btn btn-primary btn-lg" OnClick="OperacaoCButton_Click" />
            </div>
            <div class="col-1">
                <asp:Button runat="server" ID="OperacaoBackSpaceButton" Text="<=" CssClass="btn btn-primary btn-lg" OnClick="OperacaoBackSpaceButton_Click" />
            </div>
        </div>
        <div class="row m-2">
            <div class="col-1">
                <button class="btn btn-secondary btn-lg" onclick="AdicionarDigito('7'); return false;">7</button>
            </div>
            <div class="col-1">
                <button class="btn btn-secondary btn-lg" onclick="AdicionarDigito('8'); return false;">8</button>
            </div>
            <div class="col-1">
                <button class="btn btn-secondary btn-lg" onclick="AdicionarDigito('9'); return false;">9</button>
            </div>
            <div class="col-1">
                <asp:Button runat="server" ID="OperacaoDividirButton" Text="÷" CssClass="btn btn-primary btn-lg" OnClick="OperacaoDividirButton_Click" />
            </div>
        </div>
        <div class="row m-2">
            <div class="col-1">
                <button class="btn btn-secondary btn-lg" onclick="AdicionarDigito('4'); return false;">4</button>
            </div>
            <div class="col-1">
                <button class="btn btn-secondary btn-lg" onclick="AdicionarDigito('5'); return false;">5</button>
            </div>
            <div class="col-1">
                <button class="btn btn-secondary btn-lg" onclick="AdicionarDigito('6'); return false;">6</button>
            </div>
            <div class="col-1">
                <asp:Button runat="server" ID="OperacaoMultiplicarButton" Text="x" CssClass="btn btn-primary btn-lg" OnClick="OperacaoMultiplicarButton_Click" />
            </div>
        </div>
        <div class="row m-2">
            <div class="col-1">
                <button class="btn btn-secondary btn-lg" onclick="AdicionarDigito('1'); return false;">1</button>
            </div>
            <div class="col-1">
                <button class="btn btn-secondary btn-lg" onclick="AdicionarDigito('2'); return false;">2</button>
            </div>
            <div class="col-1">
                <button class="btn btn-secondary btn-lg" onclick="AdicionarDigito('3'); return false;">3</button>
            </div>
            <div class="col-1">
                <asp:Button runat="server" ID="OperacaoSubtrairButton" Text="-" CssClass="btn btn-primary btn-lg" OnClick="OperacaoSubtrairButton_Click" />
            </div>
        </div>
        <div class="row m-2">
            <div class="col-1">
                <asp:Button runat="server" ID="AlternarPositivoNegativo" Text="+/-" CssClass="btn btn-secondary btn-lg" OnClick="AlternarPositivoNegativo_Click" />
            </div>
            <div class="col-1">
                <button class="btn btn-secondary btn-lg" onclick="AdicionarDigito('0'); return false;">0</button>
            </div>
            <div class="col-1">
                <asp:Button runat="server" ID="VirgulaButton" Text="," CssClass="btn btn-secondary btn-lg" OnClick="VirgulaButton_Click" />
            </div>
            <div class="col-1">
                <asp:Button runat="server" ID="OperacaoSomarButton" Text="+" CssClass="btn btn-primary btn-lg" OnClick="OperacaoSomarButton_Click" />
            </div>
        </div>
    </div>

    <script>

        function AdicionarDigito(digito) {
            var hid = document.getElementById("MainContent_NumeroAtualHidden");
            var lab = document.getElementById("MainContent_NumeroAtualLabel");

            if (hid.value === "0" && lab.innerText === "0") {
                
                hid.value = digito;
                lab.innerText = digito;
            } else {
                
                hid.value += digito;
                lab.innerText += digito;
            }
        }

    </script>
</asp:Content>
