.class public final Lteam/opay/pay/payment/bill/NativeBillMoreActivity;
.super Lteam/opay/pay/payment/bill/Hilt_NativeBillMoreActivity;
.source "NativeBillMoreActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/bill/NativeBillMoreActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \t2\u00020\u0001:\u0001\nB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/pay/payment/bill/NativeBillMoreActivity;",
        "Lteam/opay/pay/android/NoBindingActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "g",
        "Companion",
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


# static fields
.field public static final g:Lteam/opay/pay/payment/bill/NativeBillMoreActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/bill/NativeBillMoreActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/bill/NativeBillMoreActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/payment/bill/NativeBillMoreActivity;->g:Lteam/opay/pay/payment/bill/NativeBillMoreActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_fragment_container:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/payment/bill/Hilt_NativeBillMoreActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/payment/bill/Hilt_NativeBillMoreActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "entrance_id"

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    :cond_0
    const-string p1, ""

    .line 25
    .line 26
    :cond_1
    sget-object v1, Lcom/opay/team/OPayAnalytics;->b:Lcom/opay/team/OPayAnalytics$Companion;

    .line 27
    .line 28
    sget-object v2, Lteam/opay/pay/home/Service;->COMMON:Lteam/opay/pay/home/Service;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/opay/team/OPayAnalytics$Companion;->b(Lteam/opay/pay/home/Service;)Lcom/opay/team/OPayAnalytics;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 v0, 0x1

    .line 41
    new-array v0, v0, [Lkotlin/Pair;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    aput-object p1, v0, v2

    .line 45
    .line 46
    const-string p1, "Billmore_APP_click"

    .line 47
    .line 48
    invoke-virtual {v1, p1, v0}, Lcom/opay/team/OPayAnalytics;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    sget p1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 52
    .line 53
    sget-object v0, Lteam/opay/pay/payment/bill/NativeBillMoreFragment;->s:Lteam/opay/pay/payment/bill/NativeBillMoreFragment$Companion;

    .line 54
    .line 55
    invoke-virtual {v0}, Lteam/opay/pay/payment/bill/NativeBillMoreFragment$Companion;->a()Lteam/opay/pay/payment/bill/NativeBillMoreFragment;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
