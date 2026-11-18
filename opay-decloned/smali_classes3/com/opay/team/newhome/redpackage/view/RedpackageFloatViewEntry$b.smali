.class public final Lcom/opay/team/newhome/redpackage/view/RedpackageFloatViewEntry$b;
.super Ljava/lang/Object;
.source "RedpackageFloatViewEntry.kt"

# interfaces
.implements Lphc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/redpackage/view/RedpackageFloatViewEntry;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "com/opay/team/newhome/redpackage/view/RedpackageFloatViewEntry$b",
        "Lphc;",
        "Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;",
        "magnetView",
        "",
        "a",
        "(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;)V",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/opay/team/newhome/redpackage/view/RedpackageFloatViewEntry;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/redpackage/view/RedpackageFloatViewEntry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/redpackage/view/RedpackageFloatViewEntry$b;->a:Lcom/opay/team/newhome/redpackage/view/RedpackageFloatViewEntry;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/opay/team/newhome/redpackage/view/RedpackageFloatViewEntry$b;->a:Lcom/opay/team/newhome/redpackage/view/RedpackageFloatViewEntry;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/opay/team/newhome/redpackage/view/RedpackageFloatViewEntry;->g(Lcom/opay/team/newhome/redpackage/view/RedpackageFloatViewEntry;)Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/opay/team/newhome/redpackage/view/RedpackageFloatViewEntry$b;->a:Lcom/opay/team/newhome/redpackage/view/RedpackageFloatViewEntry;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/opay/team/newhome/redpackage/view/RedpackageFloatViewEntry;->h(Lcom/opay/team/newhome/redpackage/view/RedpackageFloatViewEntry;)Lteam/opay/odialog/net/AdDataItem;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    sget-object v0, Lx7b;->a:Lx7b;

    .line 21
    .line 22
    const/4 v4, 0x4

    .line 23
    const/4 v5, 0x0

    .line 24
    const-string v2, "Float_ads"

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static/range {v0 .. v5}, Lx7b;->y(Lx7b;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method
