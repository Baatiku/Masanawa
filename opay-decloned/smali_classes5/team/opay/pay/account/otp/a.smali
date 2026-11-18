.class public final synthetic Lteam/opay/pay/account/otp/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Lzr2;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lzr2;Lkotlin/jvm/internal/Ref$LongRef;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/account/otp/a;->a:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/pay/account/otp/a;->b:Lzr2;

    .line 7
    .line 8
    iput-object p3, p0, Lteam/opay/pay/account/otp/a;->c:Lkotlin/jvm/internal/Ref$LongRef;

    .line 9
    .line 10
    iput-wide p4, p0, Lteam/opay/pay/account/otp/a;->d:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/otp/a;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/account/otp/a;->b:Lzr2;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/account/otp/a;->c:Lkotlin/jvm/internal/Ref$LongRef;

    .line 6
    .line 7
    iget-wide v3, p0, Lteam/opay/pay/account/otp/a;->d:J

    .line 8
    .line 9
    move-object v5, p1

    .line 10
    check-cast v5, Ljava/lang/String;

    .line 11
    .line 12
    invoke-static/range {v0 .. v5}, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->c(Lkotlin/jvm/functions/Function1;Lzr2;Lkotlin/jvm/internal/Ref$LongRef;JLjava/lang/String;)Lkotlin/Unit;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
