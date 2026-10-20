.class public interface abstract Lteam/opay/business/provider/biometric/IBiometricPayment;
.super Ljava/lang/Object;
.source "IBiometricPayment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/provider/biometric/IBiometricPayment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008g\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000fJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J-\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0014\u0010\u000b\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0004\u0012\u00020\u00040\tH&\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/business/provider/biometric/IBiometricPayment;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "showBiometricPayGuide",
        "(Landroid/content/Context;)V",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "Lkotlin/Function1;",
        "Ljavax/crypto/Cipher;",
        "callback",
        "showBiometricPay",
        "(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V",
        "Companion",
        "a",
        "business-provider_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lteam/opay/core/annotation/Keep;
.end annotation


# static fields
.field public static final Companion:Lteam/opay/business/provider/biometric/IBiometricPayment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/business/provider/biometric/IBiometricPayment$a;->a:Lteam/opay/business/provider/biometric/IBiometricPayment$a;

    .line 2
    .line 3
    sput-object v0, Lteam/opay/business/provider/biometric/IBiometricPayment;->Companion:Lteam/opay/business/provider/biometric/IBiometricPayment$a;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract showBiometricPay(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljavax/crypto/Cipher;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showBiometricPayGuide(Landroid/content/Context;)V
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
