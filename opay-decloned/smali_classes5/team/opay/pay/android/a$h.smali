.class public final Lteam/opay/pay/android/a$h;
.super Ljava/lang/Object;
.source "DaggerNewOpayApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Ligd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/android/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# instance fields
.field public final a:Lteam/opay/pay/android/a$j;

.field public b:Landroid/app/Service;


# direct methods
.method public constructor <init>(Lteam/opay/pay/android/a$j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lteam/opay/pay/android/a$h;->a:Lteam/opay/pay/android/a$j;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/pay/android/a$j;Lyz2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/pay/android/a$h;-><init>(Lteam/opay/pay/android/a$j;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/app/Service;)Ligd;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/android/a$h;->c(Landroid/app/Service;)Lteam/opay/pay/android/a$h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b()Lteam/opay/pay/android/NewOpayApplication_HiltComponents$ServiceC;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/a$h;->b:Landroid/app/Service;

    .line 2
    .line 3
    const-class v1, Landroid/app/Service;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lxwb;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lteam/opay/pay/android/a$i;

    .line 9
    .line 10
    iget-object v1, p0, Lteam/opay/pay/android/a$h;->a:Lteam/opay/pay/android/a$j;

    .line 11
    .line 12
    iget-object v2, p0, Lteam/opay/pay/android/a$h;->b:Landroid/app/Service;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/android/a$i;-><init>(Lteam/opay/pay/android/a$j;Landroid/app/Service;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public bridge synthetic build()Lhgd;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/android/a$h;->b()Lteam/opay/pay/android/NewOpayApplication_HiltComponents$ServiceC;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c(Landroid/app/Service;)Lteam/opay/pay/android/a$h;
    .locals 0

    .line 1
    invoke-static {p1}, Lxwb;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/app/Service;

    .line 6
    .line 7
    iput-object p1, p0, Lteam/opay/pay/android/a$h;->b:Landroid/app/Service;

    .line 8
    .line 9
    return-object p0
.end method
