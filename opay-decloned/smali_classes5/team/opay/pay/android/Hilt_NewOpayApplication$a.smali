.class public Lteam/opay/pay/android/Hilt_NewOpayApplication$a;
.super Ljava/lang/Object;
.source "Hilt_NewOpayApplication.java"

# interfaces
.implements Lxk2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/android/Hilt_NewOpayApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/android/Hilt_NewOpayApplication;


# direct methods
.method public constructor <init>(Lteam/opay/pay/android/Hilt_NewOpayApplication;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/android/Hilt_NewOpayApplication$a;->a:Lteam/opay/pay/android/Hilt_NewOpayApplication;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lteam/opay/pay/android/a;->a()Lteam/opay/pay/android/a$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/android/Hilt_NewOpayApplication$a;->a:Lteam/opay/pay/android/Hilt_NewOpayApplication;

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ldagger/hilt/android/internal/modules/ApplicationContextModule;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lteam/opay/pay/android/a$e;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Lteam/opay/pay/android/a$e;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lteam/opay/pay/android/a$e;->b()Lteam/opay/pay/android/NewOpayApplication_HiltComponents$SingletonC;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
