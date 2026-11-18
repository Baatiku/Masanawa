.class public Lteam/opay/pay/android/arch/BaseViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "BaseViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0017\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\r\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/pay/android/arch/BaseViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lteam/opay/core/api/Features;",
        "features",
        "<init>",
        "(Lteam/opay/core/api/Features;)V",
        "a",
        "Lteam/opay/core/api/Features;",
        "getFeatures",
        "()Lteam/opay/core/api/Features;",
        "",
        "q",
        "()Z",
        "agentSenderPhone",
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
.field public final a:Lteam/opay/core/api/Features;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/api/Features;)V
    .locals 1
    .param p1    # Lteam/opay/core/api/Features;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "features"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/android/arch/BaseViewModel;->a:Lteam/opay/core/api/Features;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final q()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/arch/BaseViewModel;->a:Lteam/opay/core/api/Features;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/core/api/Feature;->AGENT_SENDER_PHONE:Lteam/opay/core/api/Feature;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/core/api/Features;->a(Lteam/opay/core/api/Feature;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method
