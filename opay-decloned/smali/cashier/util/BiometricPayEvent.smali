.class public final Lcashier/util/BiometricPayEvent;
.super Ljava/lang/Object;
.source "CashierBus.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0006\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcashier/util/BiometricPayEvent;",
        "",
        "Ljavax/crypto/Cipher;",
        "cipher",
        "<init>",
        "(Ljavax/crypto/Cipher;)V",
        "a",
        "Ljavax/crypto/Cipher;",
        "()Ljavax/crypto/Cipher;",
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
.field public final a:Ljavax/crypto/Cipher;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/crypto/Cipher;)V
    .locals 0
    .param p1    # Ljavax/crypto/Cipher;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcashier/util/BiometricPayEvent;->a:Ljavax/crypto/Cipher;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljavax/crypto/Cipher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/util/BiometricPayEvent;->a:Ljavax/crypto/Cipher;

    .line 2
    .line 3
    return-object v0
.end method
