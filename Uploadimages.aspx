<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Uploadimages.aspx.cs" Inherits="Uploadimages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            border-color: #ff3f3f !important;
            color: #ffffff;
            text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
            background-color: #ff3f3f;
            border-color: #ff3f3f;
            margin-left: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="container center">
	<div class="row">
		<div class="col-md-12">
			<h1 class="white">Upload Images To Gallary</h1>
		</div>
	</div>
	
		<div class="row">
			<div class="col-md-6 col-md-offset-3 center">
				<div class="btn-container">
					<!--the three icons: default, ok file (img), error file (not an img)-->
					<h1 class="imgupload"><i class="fa fa-file-image-o"></i></h1>
					<h1 class="imgupload ok"><i class="fa fa-check"></i></h1>
					<h1 class="imgupload stop"><i class="fa fa-times"></i></h1>
					<!--this field changes dinamically displaying the filename we are trying to upload-->
					<p id="namefile">Only pics allowed! (jpg,jpeg,bmp,png)</p>
					<!--our custom btn which which stays under the actual one-->
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="btn-primary" Width="193px"  />
				</div>
			</div>
		</div>
		<div class="row">			
			<div class="col-md-12">
				<!--the defauld disabled btn and the actual one shown only if the three fields are valid-->
                <asp:Button ID="Button1" runat="server" Text="Upload" Cssclass=  "auto-style2" Height="25pt" Width="50pt" OnClick="Button1_Click"/>
                <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                    <Columns>
        <asp:BoundField DataField="Text" />
        <asp:ImageField DataImageUrlField="Value" ControlStyle-Height="100" ControlStyle-Width="100" />
    </Columns>
                </asp:GridView>
			</div>
		</div>
</asp:Content>

