.class public final Lteam/opay/pay/transfer/MobileTransferItemActivity;
.super Lteam/opay/pay/transfer/Hilt_MobileTransferItemActivity;
.source "MobileTransferItemActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/transfer/MobileTransferItemActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u00142\u00020\u0001:\u0001\u0015B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\r\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u0008J\u000f\u0010\u000e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0003R\u001c\u0010\u0013\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u0012\u0004\u0008\u0012\u0010\u0003\u00a8\u0006\u0016"
    }
    d2 = {
        "Lteam/opay/pay/transfer/MobileTransferItemActivity;",
        "Lteam/opay/pay/android/NoBindingActivity;",
        "<init>",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "",
        "B",
        "(Landroid/content/Intent;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onNewIntent",
        "A",
        "",
        "g",
        "Ljava/lang/String;",
        "getTransferFrom$annotations",
        "transferFrom",
        "h",
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
.field public static final h:Lteam/opay/pay/transfer/MobileTransferItemActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/transfer/MobileTransferItemActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/transfer/MobileTransferItemActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/transfer/MobileTransferItemActivity;->h:Lteam/opay/pay/transfer/MobileTransferItemActivity$Companion;

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
    invoke-direct {p0, v0}, Lteam/opay/pay/transfer/Hilt_MobileTransferItemActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const-string v0, "1"

    .line 7
    .line 8
    iput-object v0, p0, Lteam/opay/pay/transfer/MobileTransferItemActivity;->g:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private final B(Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string v0, "entrance_type"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    move-object v1, p1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    goto :goto_0

    .line 27
    :goto_1
    if-nez v1, :cond_2

    .line 28
    .line 29
    const-string v1, ""

    .line 30
    .line 31
    :cond_2
    iput-object v1, p0, Lteam/opay/pay/transfer/MobileTransferItemActivity;->g:Ljava/lang/String;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 5

    .line 1
    sget-object v0, Ly8f;->a:Ly8f;

    .line 2
    .line 3
    const-string v1, "entrance_id"

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/transfer/MobileTransferItemActivity;->g:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "transfer_from"

    .line 12
    .line 13
    iget-object v3, p0, Lteam/opay/pay/transfer/MobileTransferItemActivity;->g:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x2

    .line 20
    new-array v3, v3, [Lkotlin/Pair;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    aput-object v1, v3, v4

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    aput-object v2, v3, v1

    .line 27
    .line 28
    const-string v1, "transfer_show"

    .line 29
    .line 30
    invoke-virtual {v0, v1, v3}, Ly8f;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/transfer/Hilt_MobileTransferItemActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Lteam/opay/pay/transfer/MobileTransferItemActivity;->B(Landroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/transfer/MobileTransferItemActivity;->A()V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lteam/opay/pay/transfer/TransferListFragment;->r:Lteam/opay/pay/transfer/TransferListFragment$Companion;

    .line 17
    .line 18
    invoke-virtual {p1}, Lteam/opay/pay/transfer/TransferListFragment$Companion;->a()Lteam/opay/pay/transfer/TransferListFragment;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 23
    .line 24
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lteam/opay/pay/transfer/MobileTransferItemActivity;->B(Landroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
