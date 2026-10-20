.class public interface abstract Lteam/opay/swarmfoundation/payment/IPaymentCashier;
.super Ljava/lang/Object;
.source "IPayment.kt"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/swarmfoundation/payment/IPaymentCashier$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001JI\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00082\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH&\u00a2\u0006\u0004\u0008\u000f\u0010\u0010JI\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00082\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH&\u00a2\u0006\u0004\u0008\u000f\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/swarmfoundation/payment/IPaymentCashier;",
        "Lteam/opay/KeepNoProguard;",
        "Landroidx/fragment/app/FragmentActivity;",
        "fragmentActivity",
        "Lteam/opay/swarmfoundation/payment/PayInput;",
        "paymentReq",
        "",
        "paymentAmount",
        "",
        "isShowStatePage",
        "pollingOrder",
        "La66;",
        "Lteam/opay/swarmfoundation/utils/PaymentMessage;",
        "collector",
        "",
        "startPay",
        "(Landroidx/fragment/app/FragmentActivity;Lteam/opay/swarmfoundation/payment/PayInput;Ljava/lang/String;ZZLa66;)V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "(Landroidx/fragment/app/Fragment;Lteam/opay/swarmfoundation/payment/PayInput;Ljava/lang/String;ZZLa66;)V",
        "swarmfoundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract startPay(Landroidx/fragment/app/Fragment;Lteam/opay/swarmfoundation/payment/PayInput;Ljava/lang/String;ZZLa66;)V
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/swarmfoundation/payment/PayInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # La66;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lteam/opay/swarmfoundation/payment/PayInput;",
            "Ljava/lang/String;",
            "ZZ",
            "La66<",
            "-",
            "Lteam/opay/swarmfoundation/utils/PaymentMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startPay(Landroidx/fragment/app/FragmentActivity;Lteam/opay/swarmfoundation/payment/PayInput;Ljava/lang/String;ZZLa66;)V
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/swarmfoundation/payment/PayInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # La66;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lteam/opay/swarmfoundation/payment/PayInput;",
            "Ljava/lang/String;",
            "ZZ",
            "La66<",
            "-",
            "Lteam/opay/swarmfoundation/utils/PaymentMessage;",
            ">;)V"
        }
    .end annotation
.end method
