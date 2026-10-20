.class public final Lteam/opay/pay/android/a$e;
.super Ljava/lang/Object;
.source "DaggerNewOpayApplication_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/android/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

.field public b:Lteam/opay/qrcode/QRCodeServiceModule;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lwz2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/android/a$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Lteam/opay/pay/android/a$e;
    .locals 0

    .line 1
    invoke-static {p1}, Lxwb;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    .line 6
    .line 7
    iput-object p1, p0, Lteam/opay/pay/android/a$e;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    .line 8
    .line 9
    return-object p0
.end method

.method public b()Lteam/opay/pay/android/NewOpayApplication_HiltComponents$SingletonC;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/a$e;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    .line 2
    .line 3
    const-class v1, Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lxwb;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lteam/opay/pay/android/a$e;->b:Lteam/opay/qrcode/QRCodeServiceModule;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lteam/opay/qrcode/QRCodeServiceModule;

    .line 13
    .line 14
    invoke-direct {v0}, Lteam/opay/qrcode/QRCodeServiceModule;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lteam/opay/pay/android/a$e;->b:Lteam/opay/qrcode/QRCodeServiceModule;

    .line 18
    .line 19
    :cond_0
    new-instance v0, Lteam/opay/pay/android/a$j;

    .line 20
    .line 21
    iget-object v1, p0, Lteam/opay/pay/android/a$e;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    .line 22
    .line 23
    iget-object v2, p0, Lteam/opay/pay/android/a$e;->b:Lteam/opay/qrcode/QRCodeServiceModule;

    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/android/a$j;-><init>(Ldagger/hilt/android/internal/modules/ApplicationContextModule;Lteam/opay/qrcode/QRCodeServiceModule;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method
