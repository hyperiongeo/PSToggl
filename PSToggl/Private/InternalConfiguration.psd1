@{
    Api = @{
        baseUrl = "https://api.track.toggl.com/api/v9/";

    };
    ObjectTypes = @{

        BareExample = @{
            DocUrl = "";
            Fields = @(
                @{ name = "id"; required = $false; default = $null; type = [long]; }
            );
        };

        Client = @{
            TypeName = "PSToggl.Client";
            DocUrl = "";
            Fields = @(
                @{ name = "id"; required = $false; default = $null; type = [long]; },
                @{ name = "name"; required = $true; default = $null; type = [string]; },
          #      @{ name = "wid"; required = $true; default = $null; type = [int]; },
                @{ name = "notes"; required = $false; default = $null; type = [string]; },
                @{ name = "at"; required = $true; default = $null; type = [datetime]; },
                @{ name = "workspace_id"; required = $true; default = $null; type = [int]; },
                @{ name = "server_deleted_at"; required = $true; default = $null; type = [string]; },
                @{ name = "archived"; required = $true; default = $null; type = [boolean]; }
            );
        };

        Group = @{
            TypeName = "PSToggl.Group"; # TODO NEEDS QWORK
            DocUrl = "";
            Fields = @(
                @{ name = "id"; required = $false; default = $null; type = [long]; },
                @{ name = "name"; required = $true; default = $null; type = [string]; },
                @{ name = "wid"; required = $true; default = $null; type = [int]; },
                @{ name = "at"; required = $true; default = $null; type = [datetime]; },
                @{ name = "organization_id"; required = $true; default = $null; type = [int]; }
            );
        };

        Project = @{
            TypeName = "PSToggl.Project";# TODO NEEDS QWORK
            DocUrl = "";
            Fields = @(
                @{ name = "id"; required = $false; default = $null; type = [long]; },
                @{ name = "name"; required = $true; default = $null; type = [string]; },
                @{ name = "wid"; required = $true; default = $null; type = [long]; },
                @{ name = "cid"; required = $false; default = $null; type = [long]; },
                @{ name = "active"; required = $true; default = $true; type = [bool]; },
                @{ name = "is_private"; required = $true; default = $true; type = [bool]; },
                @{ name = "template"; required = $false; default = $null; type = [bool]; },
                @{ name = "template_id"; required = $false; default = $null; type = [int]; }, # Check data type
                @{ name = "billable"; required = $false; default = $true; type = [string]; },
                @{ name = "auto_estimates"; required = $false; default = $false; type = [bool]; }, # Pro
                @{ name = "estimated_hours"; required = $false; default = $null; type = [int]; }, # Pro
                @{ name = "at"; required = $true; default = $null; type = [datetime]; },
                @{ name = "color"; required = $true; default = $null; type = [int]; },
                @{ name = "rate"; required = $false; default = $null; type = [float]; }, # Pro
                @{ name = "workspace_id"; required = $true; default = $null; type = [int]; },
                @{ name = "group_id"; required = $true; default = $null; type = [int]; },
                @{ name = "server_deleted_at"; required = $true; default = $null; type = [string]; },
                @{ name = "archived"; required = $true; default = $null; type = [boolean]; }
            );
        };

        ProjectUser = @{
            TypeName = "PSToggl.ProjectUser";
            DocUrl = "";
            Fields = @(
                @{ name = "id"; required = $false; default = $null; type = [long]; },
                @{ name = "pid"; required = $true; default = $null; type = [long]; },
                @{ name = "uid"; required = $true; default = $null; type = [long]; },
                @{ name = "wid"; required = $false; default = $null; type = [long]; },
                @{ name = "manager"; required = $true; default = $false; type = [bool]; },
                @{ name = "rate"; required = $false; default = $null; type = [float]; }, # Pro
                @{ name = "at"; required = $false; default = $null; type = [datetime]; }
            );
        };

        Tag = @{
            TypeName = "PSToggl.Tag";
            DocUrl = "";
            Fields = @(
                @{ name = "id"; required = $false; default = $null; type = [long]; },
               # @{ name = "wid"; required = $true; default = $null; type = [long]; },
                @{ name = "workspace_id"; required = $true; default = $null; type = [int]; },
                @{ name = "name"; required = $true; default = $null; type = [string]; },
                @{ name = "deleted_at"; required = $false; default = $null; type = [datetime]; }
                @{ name = "at"; required = $false; default = $null; type = [datetime]; }
            );
        };

        Task = @{
            TypeName = "PSToggl.Task";
            DocUrl = "";
            Fields = @(
                @{ name = "id"; required = $false; default = $null; type = [long]; },
                @{ name = "name"; required = $true; default = $null; type = [string]; },
           #     @{ name = "pid"; required = $true; default = $null; type = [long]; },
           #     @{ name = "wid"; required = $true; default = $null; type = [long]; },
                @{ name = "workspace_id"; required = $true; default = $null; type = [int]; },
                @{ name = "project_id"; required = $true; default = $null; type = [int]; },
                @{ name = "user_id"; required = $true; default = $null; type = [int]; },
              #  @{ name = "uid"; required = $true; default = $null; type = [long]; },
                @{ name = "estimated_seconds"; required = $true; default = $null; type = [long]; },
                @{ name = "active"; required = $true; default = $true; type = [bool]; },
                @{ name = "recurring"; required = $false; default = $null; type = [bool]; },
                @{ name = "tracked_seconds"; required = $false; default = $null; type = [long]; },
                @{ name = "server_deleted_at"; required = $true; default = $null; type = [string]; },
                @{ name = "at"; required = $true; default = $null; type = [datetime]; }
            );
        };

        Entry = @{
            TypeName = "PSToggl.Entry";
            DocUrl = "";
            Fields = @(
                @{ name = "id"; required = $false; default = $null; type = [long]; },
                @{ name = "description"; required = $false; default = $null; type = [string]; },
           #    @{ name = "wid"; required = $true; default = $null; type = [long]; }, # special case, req if pid and tid null
                @{ name = "workspace_id"; required = $true; default = $null; type = [long]; },
                @{ name = "user_id"; required = $true; default = $null; type = [long]; },
            #    @{ name = "pid"; required = $false; default = $null; type = [long]; },
                @{ name = "project_id"; required = $false; default = $null; type = [long]; },
                @{ name = "tid"; required = $false; default = $null; type = [long]; },
                @{ name = "task_id"; required = $false; default = $null; type = [long]; },
                @{ name = "server_deleted_at"; required = $true; default = $null; type = [string]; },
                @{ name = "billable"; required = $false; default = $null; type = [bool]; },
                @{ name = "start"; required = $true; default = $null; type = [datetime]; },
                @{ name = "stop"; required = $false; default = $null; type = [datetime]; },
                @{ name = "duration"; required = $true; default = $null; type = [long]; }, # If currently running, its negative.
                @{ name = "created_with"; required = $true; default = "PSToggl"; type = [string]; },
                @{ name = "tag_ids"; required = $false; default = $null; type = [long]; },
                @{ name = "tags"; required = $false; default = $null; type = [string[]]; },
                @{ name = "duronly"; required = $false; default = $false; type = [bool]; },
                @{ name = "at"; required = $true; default = $null; type = [datetime]; }
                );
        };

        User = @{
            TypeName = "PSToggl.User";
            DocUrl = "";
            Fields = @(
                @{ name = "id"; required = $false; default = $null; type = [long]; },
                @{ name = "api_token"; required = $true; default = $null; type = [string]; },
            #    @{ name = "default_wid"; required = $true; default = $null; type = [long]; },
                @{ name = "default_workspace_id"; required = $true; default = $null; type = [long]; },
                @{ name = "email"; required = $false; default = $null; type = [string]; },
                @{ name = "fullname"; required = $true; default = $null; type = [string]; },
                @{ name = "jquery_timeofday_format"; required = $false; default = $null; type = [string]; },
                @{ name = "jquery_date_format"; required = $false; default = $null; type = [string]; },
                @{ name = "timeofday_format"; required = $false; default = $null; type = [string]; },
                @{ name = "date_format"; required = $false; default = $null; type = [string]; },
                @{ name = "store_start_and_stop_time"; required = $false; default = $null; type = [bool]; },
                @{ name = "beginning_of_week"; required = $false; default = $null; type = [int]; }, # 0-6, Sun=0
                @{ name = "language"; required = $false; default = $null; type = [string]; },
                @{ name = "image_url"; required = $false; default = $null; type = [string]; },
                @{ name = "sidebar_piechart"; required = $false; default = $null; type = [bool]; },
                @{ name = "country_id"; required = $false; default = $null; type = [int]; },
                @{ name = "updated_at"; required = $true; default = $null; type = [datetime]; },
                @{ name = "at"; required = $true; default = $null; type = [datetime]; }
                ####
                # @{ name = "new_blog_post"; required = $false; default = $null; type = [psobject]; },
                ####
                @{ name = "send_product_emails"; required = $false; default = $null; type = [bool]; },
                @{ name = "send_weekly_reports"; required = $false; default = $null; type = [bool]; },
                @{ name = "send_timer_notifications"; required = $false; default = $null; type = [bool]; },
                @{ name = "openid_enabled"; required = $false; default = $null; type = [bool]; },
                @{ name = "timezone"; required = $false; default = $null; type = [string]; },
                # TODO These are undocumented and added after testing.
                @{ name = "render_timeline"; required = $false; default = $null; type = [bool]; },
                @{ name = "retention"; required = $false; default = $null; type = [int]; },
                @{ name = "record_timeline"; required = $false; default = $null; type = [bool]; },
                @{ name = "timeline_enabled"; required = $false; default = $null; type = [bool]; }
            );
        };

        Workspace = @{
            TypeName = "PSToggl.Workspace";
            DocUrl = "";
            Fields = @(
                @{ name = "id"; required = $false; default = $null; type = [long]; },
                @{ name = "name"; required = $true; default = $null; type = [string]; },
                @{ name = "premium"; required = $true; default = $null; type = [bool]; },
                @{ name = "admin"; required = $true; default = $null; type = [bool]; },
                @{ name = "admins"; required = $true; default = $null; type = [string[]]; },
                @{ name = "default_hourly_rate"; required = $false; default = $null; type = [float]; },
                @{ name = "default_currency"; required = $true; default = $null; type = [string]; },
                @{ name = "only_admins_may_create_projects"; required = $true; default = $null; type = [bool]; },
                @{ name = "only_admins_see_billable_rates"; required = $true; default = $null; type = [bool]; },
                @{ name = "rounding"; required = $true; default = $null; type = [int]; },
                @{ name = "rounding_minutes"; required = $true; default = $null; type = [int]; },
                @{ name = "at"; required = $true; default = $null; type = [datetime]; },
                @{ name = "logo_url"; required = $true; default = $null; type = [string]; }
            );
        };
    };
}
