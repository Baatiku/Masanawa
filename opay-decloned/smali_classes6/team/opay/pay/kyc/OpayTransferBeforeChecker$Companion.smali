.class public final Lteam/opay/pay/kyc/OpayTransferBeforeChecker$Companion;
.super Ljava/lang/Object;
.source "OpayTransferBeforeChecker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/kyc/OpayTransferBeforeChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/pay/kyc/OpayTransferBeforeChecker$Companion;",
        "",
        "<init>",
        "()V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "Lteam/opay/pay/kyc/OpayTransferBeforeChecker;",
        "b",
        "(Landroidx/fragment/app/Fragment;)Lteam/opay/pay/kyc/OpayTransferBeforeChecker;",
        "Landroidx/lifecycle/Lifecycle;",
        "lifecycle",
        "",
        "a",
        "(Landroidx/lifecycle/Lifecycle;)V",
        "ins",
        "Lteam/opay/pay/kyc/OpayTransferBeforeChecker;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/OpayTransferBeforeChecker$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/OpayTransferBeforeChecker$Companion$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/kyc/OpayTransferBeforeChecker$Companion$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->a(Lzf8;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final b(Landroidx/fragment/app/Fragment;)Lteam/opay/pay/kyc/OpayTransferBeforeChecker;
    .locals 4
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "<get-lifecycle>(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lteam/opay/pay/kyc/OpayTransferBeforeChecker$Companion;->a(Landroidx/lifecycle/Lifecycle;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->c()Lteam/opay/pay/kyc/OpayTransferBeforeChecker;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "getViewLifecycleOwner(...)"

    .line 31
    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "requireActivity(...)"

    .line 40
    .line 41
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-direct {v0, p1, v1, v2, v3}, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;-><init>(Lr0g;Lag8;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->d(Lteam/opay/pay/kyc/OpayTransferBeforeChecker;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-object v0
.end method
