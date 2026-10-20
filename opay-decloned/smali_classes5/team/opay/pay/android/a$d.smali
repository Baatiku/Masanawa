.class public final Lteam/opay/pay/android/a$d;
.super Lteam/opay/pay/android/NewOpayApplication_HiltComponents$ActivityRetainedC;
.source "DaggerNewOpayApplication_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/android/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/android/a$d$a;
    }
.end annotation


# instance fields
.field public final a:Lteam/opay/pay/android/a$j;

.field public final b:Lteam/opay/pay/android/a$d;

.field public c:Lm3c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm3c<",
            "Lgg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/pay/android/a$j;Lm3d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/android/NewOpayApplication_HiltComponents$ActivityRetainedC;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lteam/opay/pay/android/a$d;->b:Lteam/opay/pay/android/a$d;

    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/android/a$d;->a:Lteam/opay/pay/android/a$j;

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lteam/opay/pay/android/a$d;->c(Lm3d;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()Loe;
    .locals 4

    .line 1
    new-instance v0, Lteam/opay/pay/android/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/android/a$d;->a:Lteam/opay/pay/android/a$j;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/android/a$d;->b:Lteam/opay/pay/android/a$d;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lteam/opay/pay/android/a$a;-><init>(Lteam/opay/pay/android/a$j;Lteam/opay/pay/android/a$d;Luz2;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public b()Lgg;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/a$d;->c:Lm3c;

    .line 2
    .line 3
    invoke-interface {v0}, Ll3c;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lgg;

    .line 8
    .line 9
    return-object v0
.end method

.method public final c(Lm3d;)V
    .locals 3

    .line 1
    new-instance p1, Lteam/opay/pay/android/a$d$a;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/android/a$d;->a:Lteam/opay/pay/android/a$j;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/android/a$d;->b:Lteam/opay/pay/android/a$d;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {p1, v0, v1, v2}, Lteam/opay/pay/android/a$d$a;-><init>(Lteam/opay/pay/android/a$j;Lteam/opay/pay/android/a$d;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lui3;->c(Lm3c;)Lm3c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lteam/opay/pay/android/a$d;->c:Lm3c;

    .line 16
    .line 17
    return-void
.end method
