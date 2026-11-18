.class public final Lteam/opay/pay/cashier/result/OwealthGuideSuccessDialog$Companion;
.super Ljava/lang/Object;
.source "OwealthGuideSuccessDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/cashier/result/OwealthGuideSuccessDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/pay/cashier/result/OwealthGuideSuccessDialog$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/pay/cashier/newpayment/OpenAutoSubscribeInstantResult;",
        "data",
        "",
        "type",
        "Lteam/opay/pay/cashier/result/OwealthGuideSuccessDialog;",
        "a",
        "(Lteam/opay/pay/cashier/newpayment/OpenAutoSubscribeInstantResult;Ljava/lang/String;)Lteam/opay/pay/cashier/result/OwealthGuideSuccessDialog;",
        "KEY_DATA",
        "Ljava/lang/String;",
        "KEY_TYPE",
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
    invoke-direct {p0}, Lteam/opay/pay/cashier/result/OwealthGuideSuccessDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/pay/cashier/newpayment/OpenAutoSubscribeInstantResult;Ljava/lang/String;)Lteam/opay/pay/cashier/result/OwealthGuideSuccessDialog;
    .locals 2
    .param p1    # Lteam/opay/pay/cashier/newpayment/OpenAutoSubscribeInstantResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "type"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Lteam/opay/pay/cashier/result/OwealthGuideSuccessDialog;

    .line 12
    .line 13
    invoke-direct {p2}, Lteam/opay/pay/cashier/result/OwealthGuideSuccessDialog;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lteam/opay/pay/cashier/result/OwealthGuideSuccessDialog;->R()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lteam/opay/pay/cashier/result/OwealthGuideSuccessDialog;->S()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    return-object p2
.end method
