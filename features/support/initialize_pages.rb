class SnapPages
    def loginpage
        @loginpage = LoginPage.new
    end

    def dashboard
        @dashboard = DashboardPage.new
    end

    def registerpage
        @registerpage = RegisterPage.new
    end

    def snapcareerpage
        @snapcareerpage = SnapcareerPage.new
    end

end