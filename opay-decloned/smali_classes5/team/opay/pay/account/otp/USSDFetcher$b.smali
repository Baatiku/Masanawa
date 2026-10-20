.class public final Lteam/opay/pay/account/otp/USSDFetcher$b;
.super Landroid/telephony/TelephonyManager$UssdResponseCallback;
.source "USSDFetcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/account/otp/USSDFetcher;->h(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J-\u0010\t\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ+\u0010\r\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "team/opay/pay/account/otp/USSDFetcher$b",
        "Landroid/telephony/TelephonyManager$UssdResponseCallback;",
        "Landroid/telephony/TelephonyManager;",
        "telephonyManager",
        "",
        "request",
        "",
        "response",
        "",
        "onReceiveUssdResponse",
        "(Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/lang/CharSequence;)V",
        "",
        "failureCode",
        "onReceiveUssdResponseFailed",
        "(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)V",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;Lkotlin/jvm/functions/Function1;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/account/otp/USSDFetcher$b;->a:Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/account/otp/USSDFetcher$b;->b:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput p3, p0, Lteam/opay/pay/account/otp/USSDFetcher$b;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/account/otp/USSDFetcher$b;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/telephony/TelephonyManager$UssdResponseCallback;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onReceiveUssdResponse(Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p2, "onReceiveUssdResponse response = "

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    sget-object p1, Lteam/opay/pay/account/otp/OtpFetcher;->h:Lteam/opay/pay/account/otp/OtpFetcher$Companion;

    .line 15
    .line 16
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Lteam/opay/pay/account/otp/OtpFetcher$Companion;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p2, p0, Lteam/opay/pay/account/otp/USSDFetcher$b;->a:Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    .line 25
    .line 26
    check-cast p2, Lteam/opay/pay/wallet/USSDRunningDialog;

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    invoke-virtual {p2}, Lteam/opay/core/base/BaseSheetFragment;->dismiss()V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-static {p1}, Lca2;->b(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    iget-object p2, p0, Lteam/opay/pay/account/otp/USSDFetcher$b;->b:Lkotlin/jvm/functions/Function1;

    .line 40
    .line 41
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    sget-object p1, Lx7b;->a:Lx7b;

    .line 45
    .line 46
    iget p2, p0, Lteam/opay/pay/account/otp/USSDFetcher$b;->c:I

    .line 47
    .line 48
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const-string p3, "from"

    .line 53
    .line 54
    invoke-static {p3, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    const-string p3, "action"

    .line 59
    .line 60
    const-string v0, "2"

    .line 61
    .line 62
    invoke-static {p3, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    const-string v0, "phone"

    .line 67
    .line 68
    iget-object v1, p0, Lteam/opay/pay/account/otp/USSDFetcher$b;->d:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v0, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const/4 v1, 0x3

    .line 75
    new-array v1, v1, [Lkotlin/Pair;

    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    aput-object p2, v1, v2

    .line 79
    .line 80
    const/4 p2, 0x1

    .line 81
    aput-object p3, v1, p2

    .line 82
    .line 83
    const/4 p2, 0x2

    .line 84
    aput-object v0, v1, p2

    .line 85
    .line 86
    const-string p2, "ussd_has_permission_call"

    .line 87
    .line 88
    invoke-virtual {p1, p2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    return-void
.end method

.method public onReceiveUssdResponseFailed(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)V
    .locals 4

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p2, "onReceiveUssdResponseFailed failureCode = "

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lteam/opay/pay/account/otp/USSDFetcher$b;->a:Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    .line 15
    .line 16
    check-cast p1, Lteam/opay/pay/wallet/USSDRunningDialog;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lteam/opay/core/base/BaseSheetFragment;->dismiss()V

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-object p1, Lx7b;->a:Lx7b;

    .line 24
    .line 25
    iget p2, p0, Lteam/opay/pay/account/otp/USSDFetcher$b;->c:I

    .line 26
    .line 27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const-string v0, "from"

    .line 32
    .line 33
    invoke-static {v0, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const-string v0, "action"

    .line 38
    .line 39
    const-string v1, "3"

    .line 40
    .line 41
    invoke-static {v0, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    const-string v1, "failureCode"

    .line 50
    .line 51
    invoke-static {v1, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    const-string v1, "phone"

    .line 56
    .line 57
    iget-object v2, p0, Lteam/opay/pay/account/otp/USSDFetcher$b;->d:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const/4 v2, 0x4

    .line 64
    new-array v2, v2, [Lkotlin/Pair;

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    aput-object p2, v2, v3

    .line 68
    .line 69
    const/4 p2, 0x1

    .line 70
    aput-object v0, v2, p2

    .line 71
    .line 72
    const/4 p2, 0x2

    .line 73
    aput-object p3, v2, p2

    .line 74
    .line 75
    const/4 p2, 0x3

    .line 76
    aput-object v1, v2, p2

    .line 77
    .line 78
    const-string p2, "ussd_has_permission_call"

    .line 79
    .line 80
    invoke-virtual {p1, p2, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
