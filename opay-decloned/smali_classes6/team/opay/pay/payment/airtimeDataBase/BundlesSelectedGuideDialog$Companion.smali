.class public final Lteam/opay/pay/payment/airtimeDataBase/BundlesSelectedGuideDialog$Companion;
.super Ljava/lang/Object;
.source "BundlesSelectedGuideDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/payment/airtimeDataBase/BundlesSelectedGuideDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J%\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lteam/opay/pay/payment/airtimeDataBase/BundlesSelectedGuideDialog$Companion;",
        "",
        "<init>",
        "()V",
        "",
        "tips",
        "",
        "amount",
        "discountAmount",
        "Lteam/opay/pay/payment/airtimeDataBase/BundlesSelectedGuideDialog;",
        "a",
        "(Ljava/lang/String;FF)Lteam/opay/pay/payment/airtimeDataBase/BundlesSelectedGuideDialog;",
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
    invoke-direct {p0}, Lteam/opay/pay/payment/airtimeDataBase/BundlesSelectedGuideDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;FF)Lteam/opay/pay/payment/airtimeDataBase/BundlesSelectedGuideDialog;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "tips"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lteam/opay/pay/payment/airtimeDataBase/BundlesSelectedGuideDialog;

    .line 7
    .line 8
    invoke-direct {v1}, Lteam/opay/pay/payment/airtimeDataBase/BundlesSelectedGuideDialog;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "discount"

    .line 20
    .line 21
    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 22
    .line 23
    .line 24
    const-string p1, "amount"

    .line 25
    .line 26
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    return-object v1
.end method
