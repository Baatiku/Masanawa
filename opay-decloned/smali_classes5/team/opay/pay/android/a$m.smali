.class public final Lteam/opay/pay/android/a$m;
.super Ljava/lang/Object;
.source "DaggerNewOpayApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Lk0g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/android/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation


# instance fields
.field public final a:Lteam/opay/pay/android/a$j;

.field public final b:Lteam/opay/pay/android/a$d;

.field public c:Landroidx/lifecycle/SavedStateHandle;

.field public d:Lo0g;


# direct methods
.method public constructor <init>(Lteam/opay/pay/android/a$j;Lteam/opay/pay/android/a$d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lteam/opay/pay/android/a$m;->a:Lteam/opay/pay/android/a$j;

    .line 4
    iput-object p2, p0, Lteam/opay/pay/android/a$m;->b:Lteam/opay/pay/android/a$d;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/pay/android/a$j;Lteam/opay/pay/android/a$d;La03;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lteam/opay/pay/android/a$m;-><init>(Lteam/opay/pay/android/a$j;Lteam/opay/pay/android/a$d;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/lifecycle/SavedStateHandle;)Lk0g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/android/a$m;->d(Landroidx/lifecycle/SavedStateHandle;)Lteam/opay/pay/android/a$m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(Lo0g;)Lk0g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/android/a$m;->e(Lo0g;)Lteam/opay/pay/android/a$m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic build()Lj0g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/android/a$m;->c()Lteam/opay/pay/android/NewOpayApplication_HiltComponents$ViewModelC;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c()Lteam/opay/pay/android/NewOpayApplication_HiltComponents$ViewModelC;
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/a$m;->c:Landroidx/lifecycle/SavedStateHandle;

    .line 2
    .line 3
    const-class v1, Landroidx/lifecycle/SavedStateHandle;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lxwb;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lteam/opay/pay/android/a$m;->d:Lo0g;

    .line 9
    .line 10
    const-class v1, Lo0g;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lxwb;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lteam/opay/pay/android/a$n;

    .line 16
    .line 17
    iget-object v1, p0, Lteam/opay/pay/android/a$m;->a:Lteam/opay/pay/android/a$j;

    .line 18
    .line 19
    iget-object v2, p0, Lteam/opay/pay/android/a$m;->b:Lteam/opay/pay/android/a$d;

    .line 20
    .line 21
    iget-object v3, p0, Lteam/opay/pay/android/a$m;->c:Landroidx/lifecycle/SavedStateHandle;

    .line 22
    .line 23
    iget-object v4, p0, Lteam/opay/pay/android/a$m;->d:Lo0g;

    .line 24
    .line 25
    invoke-direct {v0, v1, v2, v3, v4}, Lteam/opay/pay/android/a$n;-><init>(Lteam/opay/pay/android/a$j;Lteam/opay/pay/android/a$d;Landroidx/lifecycle/SavedStateHandle;Lo0g;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public d(Landroidx/lifecycle/SavedStateHandle;)Lteam/opay/pay/android/a$m;
    .locals 0

    .line 1
    invoke-static {p1}, Lxwb;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroidx/lifecycle/SavedStateHandle;

    .line 6
    .line 7
    iput-object p1, p0, Lteam/opay/pay/android/a$m;->c:Landroidx/lifecycle/SavedStateHandle;

    .line 8
    .line 9
    return-object p0
.end method

.method public e(Lo0g;)Lteam/opay/pay/android/a$m;
    .locals 0

    .line 1
    invoke-static {p1}, Lxwb;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lo0g;

    .line 6
    .line 7
    iput-object p1, p0, Lteam/opay/pay/android/a$m;->d:Lo0g;

    .line 8
    .line 9
    return-object p0
.end method
