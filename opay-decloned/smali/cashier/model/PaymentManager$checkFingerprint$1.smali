.class final Lcashier/model/PaymentManager$checkFingerprint$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PaymentManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/model/PaymentManager;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljavax/crypto/Cipher;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Ljavax/crypto/Cipher;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcashier/model/PaymentManager$checkFingerprint$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcashier/model/PaymentManager$checkFingerprint$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcashier/model/PaymentManager$checkFingerprint$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcashier/model/PaymentManager$checkFingerprint$1;->INSTANCE:Lcashier/model/PaymentManager$checkFingerprint$1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1}, Lcashier/model/PaymentManager$checkFingerprint$1;->invoke(Ljavax/crypto/Cipher;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljavax/crypto/Cipher;)V
    .locals 6
    .param p1    # Ljavax/crypto/Cipher;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    sget-object v0, Lcashier/util/CashierBus;->a:Lcashier/util/CashierBus;

    new-instance v2, Lcashier/util/BiometricPayEvent;

    invoke-direct {v2, p1}, Lcashier/util/BiometricPayEvent;-><init>(Ljavax/crypto/Cipher;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "biometric_pay_key"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcashier/util/CashierBus;->f(Lcashier/util/CashierBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    return-void
.end method
