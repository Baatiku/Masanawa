.class final Lteam/opay/swarmfoundation/applink/OuterAppLink$checkAppLink$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "OuterAppLink.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/swarmfoundation/applink/OuterAppLink;->b(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "confirm",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $appLink:Lteam/opay/swarmfoundation/applink/AppLinkConfigData;

.field final synthetic $confirmCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Lteam/opay/swarmfoundation/applink/AppLinkConfigData;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Ljava/lang/String;",
            "Lteam/opay/swarmfoundation/applink/AppLinkConfigData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/swarmfoundation/applink/OuterAppLink$checkAppLink$1$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/swarmfoundation/applink/OuterAppLink$checkAppLink$1$1;->$url:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/swarmfoundation/applink/OuterAppLink$checkAppLink$1$1;->$appLink:Lteam/opay/swarmfoundation/applink/AppLinkConfigData;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/swarmfoundation/applink/OuterAppLink$checkAppLink$1$1;->$confirmCallback:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lteam/opay/swarmfoundation/applink/OuterAppLink$checkAppLink$1$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 4

    if-eqz p1, :cond_1

    .line 2
    sget-object v0, Lteam/opay/swarmfoundation/applink/OuterAppLink;->a:Lteam/opay/swarmfoundation/applink/OuterAppLink;

    iget-object v1, p0, Lteam/opay/swarmfoundation/applink/OuterAppLink$checkAppLink$1$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lteam/opay/swarmfoundation/applink/OuterAppLink$checkAppLink$1$1;->$url:Ljava/lang/String;

    iget-object v3, p0, Lteam/opay/swarmfoundation/applink/OuterAppLink$checkAppLink$1$1;->$appLink:Lteam/opay/swarmfoundation/applink/AppLinkConfigData;

    invoke-virtual {v3}, Lteam/opay/swarmfoundation/applink/AppLinkConfigData;->getAppId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    invoke-static {v0, v1, v2, v3}, Lteam/opay/swarmfoundation/applink/OuterAppLink;->a(Lteam/opay/swarmfoundation/applink/OuterAppLink;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3
    :cond_1
    iget-object v0, p0, Lteam/opay/swarmfoundation/applink/OuterAppLink$checkAppLink$1$1;->$confirmCallback:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
