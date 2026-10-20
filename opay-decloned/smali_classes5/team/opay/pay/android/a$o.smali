.class public final Lteam/opay/pay/android/a$o;
.super Ljava/lang/Object;
.source "DaggerNewOpayApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Le2g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/android/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation


# instance fields
.field public final a:Lteam/opay/pay/android/a$j;

.field public final b:Lteam/opay/pay/android/a$d;

.field public final c:Lteam/opay/pay/android/a$b;

.field public final d:Lteam/opay/pay/android/a$g;

.field public e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lteam/opay/pay/android/a$j;Lteam/opay/pay/android/a$d;Lteam/opay/pay/android/a$b;Lteam/opay/pay/android/a$g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lteam/opay/pay/android/a$o;->a:Lteam/opay/pay/android/a$j;

    .line 4
    iput-object p2, p0, Lteam/opay/pay/android/a$o;->b:Lteam/opay/pay/android/a$d;

    .line 5
    iput-object p3, p0, Lteam/opay/pay/android/a$o;->c:Lteam/opay/pay/android/a$b;

    .line 6
    iput-object p4, p0, Lteam/opay/pay/android/a$o;->d:Lteam/opay/pay/android/a$g;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/pay/android/a$j;Lteam/opay/pay/android/a$d;Lteam/opay/pay/android/a$b;Lteam/opay/pay/android/a$g;Lb03;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lteam/opay/pay/android/a$o;-><init>(Lteam/opay/pay/android/a$j;Lteam/opay/pay/android/a$d;Lteam/opay/pay/android/a$b;Lteam/opay/pay/android/a$g;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;)Le2g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/android/a$o;->c(Landroid/view/View;)Lteam/opay/pay/android/a$o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b()Lteam/opay/pay/android/NewOpayApplication_HiltComponents$ViewWithFragmentC;
    .locals 8

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/a$o;->e:Landroid/view/View;

    .line 2
    .line 3
    const-class v1, Landroid/view/View;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lxwb;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lteam/opay/pay/android/a$p;

    .line 9
    .line 10
    iget-object v3, p0, Lteam/opay/pay/android/a$o;->a:Lteam/opay/pay/android/a$j;

    .line 11
    .line 12
    iget-object v4, p0, Lteam/opay/pay/android/a$o;->b:Lteam/opay/pay/android/a$d;

    .line 13
    .line 14
    iget-object v5, p0, Lteam/opay/pay/android/a$o;->c:Lteam/opay/pay/android/a$b;

    .line 15
    .line 16
    iget-object v6, p0, Lteam/opay/pay/android/a$o;->d:Lteam/opay/pay/android/a$g;

    .line 17
    .line 18
    iget-object v7, p0, Lteam/opay/pay/android/a$o;->e:Landroid/view/View;

    .line 19
    .line 20
    move-object v2, v0

    .line 21
    invoke-direct/range {v2 .. v7}, Lteam/opay/pay/android/a$p;-><init>(Lteam/opay/pay/android/a$j;Lteam/opay/pay/android/a$d;Lteam/opay/pay/android/a$b;Lteam/opay/pay/android/a$g;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public bridge synthetic build()Ld2g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/android/a$o;->b()Lteam/opay/pay/android/NewOpayApplication_HiltComponents$ViewWithFragmentC;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c(Landroid/view/View;)Lteam/opay/pay/android/a$o;
    .locals 0

    .line 1
    invoke-static {p1}, Lxwb;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/view/View;

    .line 6
    .line 7
    iput-object p1, p0, Lteam/opay/pay/android/a$o;->e:Landroid/view/View;

    .line 8
    .line 9
    return-object p0
.end method
