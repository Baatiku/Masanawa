.class public final synthetic Lteam/opay/pay/kyc/task/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/kyc/task/a;->a:Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/pay/kyc/task/a;->b:Ljava/io/File;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/a;->a:Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/kyc/task/a;->b:Ljava/io/File;

    .line 4
    .line 5
    check-cast p1, Lteam/opay/core/android/arch/Resource;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;->c(Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;Ljava/io/File;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
