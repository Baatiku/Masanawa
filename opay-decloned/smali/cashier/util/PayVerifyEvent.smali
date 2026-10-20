.class public final Lcashier/util/PayVerifyEvent;
.super Ljava/lang/Object;
.source "CashierBus.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0006\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcashier/util/PayVerifyEvent;",
        "",
        "Lcashier/ui/VerificationConfig;",
        "config",
        "<init>",
        "(Lcashier/ui/VerificationConfig;)V",
        "a",
        "Lcashier/ui/VerificationConfig;",
        "()Lcashier/ui/VerificationConfig;",
        "cashier_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcashier/ui/VerificationConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcashier/ui/VerificationConfig;)V
    .locals 1
    .param p1    # Lcashier/ui/VerificationConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcashier/util/PayVerifyEvent;->a:Lcashier/ui/VerificationConfig;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lcashier/ui/VerificationConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/util/PayVerifyEvent;->a:Lcashier/ui/VerificationConfig;

    .line 2
    .line 3
    return-object v0
.end method
