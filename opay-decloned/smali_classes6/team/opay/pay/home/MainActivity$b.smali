.class public final Lteam/opay/pay/home/MainActivity$b;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/MainActivity;->flowBusEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La66;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/home/MainActivity;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/MainActivity$b;->a:Lteam/opay/pay/home/MainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lteam/opay/pay/home/MainActivity$b;->a:Lteam/opay/pay/home/MainActivity;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/pay/home/MainActivity;->getTAG()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/pay/home/MainActivity$b;->a:Lteam/opay/pay/home/MainActivity;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/pay/home/MainActivity;->getViewModel()Lteam/opay/pay/home/MainViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p2, p0, Lteam/opay/pay/home/MainActivity$b;->a:Lteam/opay/pay/home/MainActivity;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lteam/opay/pay/home/MainViewModel;->h1(Lteam/opay/pay/home/MainActivity;)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p1
.end method
