.class public final Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity$a;
.super Ljava/lang/Object;
.source "KycUpgrade2Activity.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity;->t0()V
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
.field public final synthetic a:Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity$a;->a:Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lteam/opay/pay/util/EmptyMessage;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/util/EmptyMessage;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity$a;->a:Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/util/EmptyMessage;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity$a;->c(Lteam/opay/pay/util/EmptyMessage;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
