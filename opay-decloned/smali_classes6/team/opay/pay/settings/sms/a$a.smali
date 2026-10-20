.class public final Lteam/opay/pay/settings/sms/a$a;
.super Ljava/lang/Object;
.source "SmsNodListDao.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/settings/sms/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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


# direct methods
.method public static a(Lteam/opay/pay/settings/sms/a;Lteam/opay/pay/api/SmsNodeListResponse;)V
    .locals 1
    .param p0    # Lteam/opay/pay/settings/sms/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lteam/opay/pay/api/SmsNodeListResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/api/SmsNodeListResponse;->h()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {p0, v0}, Lteam/opay/pay/settings/sms/a;->b(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, p1}, Lteam/opay/pay/settings/sms/a;->c(Lteam/opay/pay/api/SmsNodeListResponse;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
