Public Class MainPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'CreationDate.Text = Today


    End Sub

    Protected Sub Department_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Department.SelectedIndexChanged
        CostCentr.Items.Clear()

        If Department.SelectedIndex = 0 Then
            CostCentr.Items.Add(New ListItem("1"))
            CostCentr.Items.Add(New ListItem("2"))
        Else
            CostCentr.Items.Add(New ListItem("3"))
            CostCentr.Items.Add(New ListItem("4"))
        End If

    End Sub

    Protected Sub CostCentr_SelectedIndexChanged(sender As Object, e As EventArgs) Handles CostCentr.SelectedIndexChanged
        CreationDate.Text = DateTime.Now.ToLongDateString()
    End Sub

    Protected Sub ClearForm_Click(sender As Object, e As EventArgs) Handles ClearForm.Click
        Creator.Text = String.Empty
    End Sub
End Class