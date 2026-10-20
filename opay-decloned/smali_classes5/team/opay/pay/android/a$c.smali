.class public final Lteam/opay/pay/android/a$c;
.super Ljava/lang/Object;
.source "DaggerNewOpayApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Lfg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/android/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lteam/opay/pay/android/a$j;

.field public b:Lm3d;


# direct methods
.method public constructor <init>(Lteam/opay/pay/android/a$j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lteam/opay/pay/android/a$c;->a:Lteam/opay/pay/android/a$j;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/pay/android/a$j;Lvz2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/pay/android/a$c;-><init>(Lteam/opay/pay/android/a$j;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lm3d;)Lfg;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/android/a$c;->c(Lm3d;)Lteam/opay/pay/android/a$c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b()Lteam/opay/pay/android/NewOpayApplication_HiltComponents$ActivityRetainedC;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/a$c;->b:Lm3d;

    .line 2
    .line 3
    const-class v1, Lm3d;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lxwb;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lteam/opay/pay/android/a$d;

    .line 9
    .line 10
    iget-object v1, p0, Lteam/opay/pay/android/a$c;->a:Lteam/opay/pay/android/a$j;

    .line 11
    .line 12
    iget-object v2, p0, Lteam/opay/pay/android/a$c;->b:Lm3d;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/android/a$d;-><init>(Lteam/opay/pay/android/a$j;Lm3d;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public bridge synthetic build()Leg;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/android/a$c;->b()Lteam/opay/pay/android/NewOpayApplication_HiltComponents$ActivityRetainedC;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c(Lm3d;)Lteam/opay/pay/android/a$c;
    .locals 0

    .line 1
    invoke-static {p1}, Lxwb;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lm3d;

    .line 6
    .line 7
    iput-object p1, p0, Lteam/opay/pay/android/a$c;->b:Lm3d;

    .line 8
    .line 9
    return-object p0
.end method
