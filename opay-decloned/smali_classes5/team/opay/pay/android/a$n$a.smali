.class public final Lteam/opay/pay/android/a$n$a;
.super Ljava/lang/Object;
.source "DaggerNewOpayApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Lm3c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/android/a$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lm3c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lteam/opay/pay/android/a$j;

.field public final b:Lteam/opay/pay/android/a$d;

.field public final c:Lteam/opay/pay/android/a$n;

.field public final d:I


# direct methods
.method public constructor <init>(Lteam/opay/pay/android/a$j;Lteam/opay/pay/android/a$d;Lteam/opay/pay/android/a$n;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/pay/android/a$n$a;->b:Lteam/opay/pay/android/a$d;

    .line 7
    .line 8
    iput-object p3, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    .line 9
    .line 10
    iput p4, p0, Lteam/opay/pay/android/a$n$a;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lteam/opay/pay/android/a$n$a;->d:I

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Lteam/opay/pay/android/a$n$a;->d:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 3
    :pswitch_0
    new-instance v0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->B:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/pay/kyc/base/KycSceneRepository;

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;-><init>(Landroid/app/Application;Lteam/opay/pay/kyc/base/KycSceneRepository;)V

    return-object v0

    .line 4
    :pswitch_1
    new-instance v0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->y:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/pay/kyc/customer/KycRepository;

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;-><init>(Landroid/app/Application;Lteam/opay/pay/kyc/customer/KycRepository;)V

    return-object v0

    .line 5
    :pswitch_2
    new-instance v0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;-><init>(Landroid/app/Application;)V

    return-object v0

    .line 6
    :pswitch_3
    new-instance v0, Lteam/opay/pay/kyc/base/KycSetAddressComponentsViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    new-instance v2, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v2}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->B:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/pay/kyc/base/KycSceneRepository;

    iget-object v4, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v4, v4, Lteam/opay/pay/android/a$j;->C:Lm3c;

    invoke-interface {v4}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lteam/opay/pay/address/AddressDao;

    invoke-direct {v0, v1, v2, v3, v4}, Lteam/opay/pay/kyc/base/KycSetAddressComponentsViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/kyc/base/KycSceneRepository;Lteam/opay/pay/address/AddressDao;)V

    return-object v0

    .line 7
    :pswitch_4
    new-instance v0, Lteam/opay/pay/kyc/task/KycPepViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/task/KycPepViewModel;-><init>(Landroid/app/Application;)V

    return-object v0

    .line 8
    :pswitch_5
    new-instance v0, Lteam/opay/pay/kyc/levels/KycLimitViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/levels/KycLimitViewModel;-><init>(Landroid/app/Application;)V

    return-object v0

    .line 9
    :pswitch_6
    new-instance v0, Lteam/opay/pay/kyc/levels/KycLevelViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->F:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lteam/opay/core/api/Features;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->p0:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lteam/opay/pay/kyc/levels/KycLevelDao;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->q0:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lteam/opay/pay/home/pay/ServicesRepository;

    new-instance v6, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v6}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lteam/opay/core/api/e;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lteam/opay/pay/kyc/levels/KycLevelViewModel;-><init>(Lteam/opay/core/api/Features;Lteam/opay/pay/kyc/levels/KycLevelDao;Lteam/opay/pay/home/pay/ServicesRepository;Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/core/api/e;)V

    return-object v0

    .line 10
    :pswitch_7
    new-instance v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;-><init>(Landroid/app/Application;)V

    return-object v0

    .line 11
    :pswitch_8
    new-instance v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianOtpViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianOtpViewModel;-><init>(Landroid/app/Application;)V

    return-object v0

    .line 12
    :pswitch_9
    new-instance v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianIdNumberViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIdNumberViewModel;-><init>(Landroid/app/Application;)V

    return-object v0

    .line 13
    :pswitch_a
    new-instance v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianFaceViewModel;-><init>(Landroid/app/Application;)V

    return-object v0

    .line 14
    :pswitch_b
    new-instance v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;-><init>(Landroid/app/Application;)V

    return-object v0

    .line 15
    :pswitch_c
    new-instance v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationViewModel;-><init>(Landroid/app/Application;)V

    return-object v0

    .line 16
    :pswitch_d
    new-instance v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v3

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->H:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lteam/opay/core/account/AccountRepository;

    new-instance v5, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v5}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->y:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lteam/opay/pay/kyc/customer/KycRepository;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lteam/opay/core/api/e;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lteam/opay/pay/kyc/edit/KycFormViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/account/AccountRepository;Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/kyc/customer/KycRepository;Lteam/opay/core/api/e;)V

    return-object v0

    .line 17
    :pswitch_e
    new-instance v0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->p0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/pay/kyc/levels/KycLevelDao;

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;-><init>(Landroid/app/Application;Lteam/opay/pay/kyc/levels/KycLevelDao;)V

    return-object v0

    .line 18
    :pswitch_f
    new-instance v0, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusViewModel;-><init>(Landroid/app/Application;)V

    return-object v0

    .line 19
    :pswitch_10
    new-instance v0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->B:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/pay/kyc/base/KycSceneRepository;

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;-><init>(Landroid/app/Application;Lteam/opay/pay/kyc/base/KycSceneRepository;)V

    return-object v0

    .line 20
    :pswitch_11
    new-instance v0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberTipsViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    new-instance v2, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v2}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->p0:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/pay/kyc/levels/KycLevelDao;

    invoke-direct {v0, v1, v2, v3}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberTipsViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/kyc/levels/KycLevelDao;)V

    return-object v0

    .line 21
    :pswitch_12
    new-instance v0, Lteam/opay/pay/kyc/upgrade2/dialog/Kyc2IdNumberBackRemindViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/upgrade2/dialog/Kyc2IdNumberBackRemindViewModel;-><init>(Landroid/app/Application;)V

    return-object v0

    .line 22
    :pswitch_13
    new-instance v0, Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    new-instance v2, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v2}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;)V

    return-object v0

    .line 23
    :pswitch_14
    new-instance v0, Lteam/opay/pay/module/offers/HotOffersViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->E:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfv;

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/module/offers/HotOffersViewModel;-><init>(Landroid/app/Application;Lfv;)V

    return-object v0

    .line 24
    :pswitch_15
    new-instance v0, Lteam/opay/pay/home/config/HomeConfigViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->o0:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/pay/home/config/HomeConfigRepository;

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/api/e;

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->F:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/api/Features;

    invoke-direct {v0, v1, v2, v3}, Lteam/opay/pay/home/config/HomeConfigViewModel;-><init>(Lteam/opay/pay/home/config/HomeConfigRepository;Lteam/opay/core/api/e;Lteam/opay/core/api/Features;)V

    return-object v0

    .line 25
    :pswitch_16
    new-instance v0, Lteam/opay/opb/qrcode/hms/business/HmsViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-static {v2}, Lteam/opay/pay/android/a$n;->c(Lteam/opay/pay/android/a$n;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lteam/opay/opb/qrcode/hms/business/HmsViewModel;-><init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;)V

    return-object v0

    .line 26
    :pswitch_17
    new-instance v0, Lteam/opay/opb/qrcode/hms/business/HmsQRCodeViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->m0()Lteam/opay/opb/qrcode/hms/business/QRCodeRepository;

    move-result-object v2

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-static {v3}, Lteam/opay/pay/android/a$n;->c(Lteam/opay/pay/android/a$n;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lteam/opay/opb/qrcode/hms/business/HmsQRCodeViewModel;-><init>(Landroid/app/Application;Lteam/opay/opb/qrcode/hms/business/QRCodeRepository;Landroidx/lifecycle/SavedStateHandle;)V

    return-object v0

    .line 27
    :pswitch_18
    new-instance v0, Lteam/opay/pay/onboarding/register/GuardianPendingViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/pay/onboarding/register/GuardianPendingViewModel;-><init>(Landroid/app/Application;)V

    return-object v0

    .line 28
    :pswitch_19
    new-instance v0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;-><init>(Landroid/app/Application;)V

    return-object v0

    .line 29
    :pswitch_1a
    new-instance v0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/core/api/e;

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;-><init>(Lteam/opay/core/api/e;Landroid/app/Application;)V

    return-object v0

    .line 30
    :pswitch_1b
    new-instance v0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;-><init>(Landroid/app/Application;)V

    return-object v0

    .line 31
    :pswitch_1c
    new-instance v0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/api/e;

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v3}, Lteam/opay/pay/android/a$n;->F()Lteam/opay/pay/payment/electricity/ElectricityRepository;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/api/e;Lteam/opay/pay/payment/electricity/ElectricityRepository;)V

    return-object v0

    .line 32
    :pswitch_1d
    new-instance v0, Lteam/opay/easemoni/module/verify/EMVerifyViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->C()Lteam/opay/easemoni/module/profile/EMProfileRepository;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->c0()Lteam/opay/easemoni/module/loan/viewmodel/OKashMyLoanRepository;

    move-result-object v2

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v3}, Lteam/opay/pay/android/a$n;->d0()Lteam/opay/easemoni/module/bvn/otp/OKashOTPAuthRepository;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lteam/opay/easemoni/module/verify/EMVerifyViewModel;-><init>(Lteam/opay/easemoni/module/profile/EMProfileRepository;Lteam/opay/easemoni/module/loan/viewmodel/OKashMyLoanRepository;Lteam/opay/easemoni/module/bvn/otp/OKashOTPAuthRepository;)V

    return-object v0

    .line 33
    :pswitch_1e
    new-instance v0, Lteam/opay/easemoni/module/loop/loan/controller/viewmodel/EMUseLoanControllerViewModel;

    invoke-direct {v0}, Lteam/opay/easemoni/module/loop/loan/controller/viewmodel/EMUseLoanControllerViewModel;-><init>()V

    return-object v0

    .line 34
    :pswitch_1f
    new-instance v0, Lteam/opay/easemoni/module/transactionrisk/otp/EMTransOTPViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->e0()Lteam/opay/easemoni/module/transactionrisk/otp/OKashOTPAuthRepository;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/transactionrisk/otp/EMTransOTPViewModel;-><init>(Lteam/opay/easemoni/module/transactionrisk/otp/OKashOTPAuthRepository;)V

    return-object v0

    .line 35
    :pswitch_20
    new-instance v0, Lteam/opay/easemoni/module/loan/viewmodel/EMTemplateViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->E()Lteam/opay/easemoni/module/loan/viewmodel/EMTemplateRespository;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/loan/viewmodel/EMTemplateViewModel;-><init>(Lteam/opay/easemoni/module/loan/viewmodel/EMTemplateRespository;)V

    return-object v0

    .line 36
    :pswitch_21
    new-instance v0, Lteam/opay/easemoni/module/home/EMSignViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/home/EMSignViewModel;-><init>(Landroid/app/Application;)V

    return-object v0

    .line 37
    :pswitch_22
    new-instance v0, Lteam/opay/easemoni/module/riskcontrol/EMRiskControlViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->m:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loan/cash/credit/core/util/thread/AppExecutors;

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->Z()Lteam/opay/easemoni/module/home/OKashHomeRepository;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lteam/opay/easemoni/module/riskcontrol/EMRiskControlViewModel;-><init>(Lcom/loan/cash/credit/core/util/thread/AppExecutors;Lteam/opay/easemoni/module/home/OKashHomeRepository;)V

    return-object v0

    .line 38
    :pswitch_23
    new-instance v0, Lteam/opay/easemoni/module/repay/coupon/EMRepayCouponViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->D()Lteam/opay/easemoni/module/repay/coupon/EMRepayCouponRepository;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/repay/coupon/EMRepayCouponViewModel;-><init>(Lteam/opay/easemoni/module/repay/coupon/EMRepayCouponRepository;)V

    return-object v0

    .line 39
    :pswitch_24
    new-instance v0, Lteam/opay/easemoni/module/repay/card/EMRepayCardModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->r()Lteam/opay/easemoni/module/card/viewmodel/EMCardRepository;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/repay/card/EMRepayCardModel;-><init>(Lteam/opay/easemoni/module/card/viewmodel/EMCardRepository;)V

    return-object v0

    .line 40
    :pswitch_25
    new-instance v0, Lteam/opay/easemoni/module/profile/EMProfileViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->C()Lteam/opay/easemoni/module/profile/EMProfileRepository;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/profile/EMProfileViewModel;-><init>(Lteam/opay/easemoni/module/profile/EMProfileRepository;)V

    return-object v0

    .line 41
    :pswitch_26
    new-instance v0, Lteam/opay/easemoni/module/dialogs/EMOnBackPressedInterceptorViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->B()Lteam/opay/easemoni/module/dialogs/EMOnBackPressedInterceptorRepository;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/dialogs/EMOnBackPressedInterceptorViewModel;-><init>(Lteam/opay/easemoni/module/dialogs/EMOnBackPressedInterceptorRepository;)V

    return-object v0

    .line 42
    :pswitch_27
    new-instance v0, Lteam/opay/easemoni/module/home/EMMainViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->A()Lteam/opay/easemoni/module/home/EMMainRepository;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->Z()Lteam/opay/easemoni/module/home/OKashHomeRepository;

    move-result-object v2

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v3}, Lteam/opay/pay/android/a$n;->p()Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lteam/opay/easemoni/module/home/EMMainViewModel;-><init>(Lteam/opay/easemoni/module/home/EMMainRepository;Lteam/opay/easemoni/module/home/OKashHomeRepository;Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;)V

    return-object v0

    .line 43
    :pswitch_28
    new-instance v0, Lteam/opay/easemoni/module/loop/repayment/EMLoopRepaymentViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->z()Lteam/opay/easemoni/module/loop/repayment/EMLoopRepaymentRepository;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/loop/repayment/EMLoopRepaymentViewModel;-><init>(Lteam/opay/easemoni/module/loop/repayment/EMLoopRepaymentRepository;)V

    return-object v0

    .line 44
    :pswitch_29
    new-instance v0, Lteam/opay/easemoni/module/loop/loan/EMLoopLoanViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->m:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loan/cash/credit/core/util/thread/AppExecutors;

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->y()Lteam/opay/easemoni/module/loop/loan/EMLoopLoanRepository;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lteam/opay/easemoni/module/loop/loan/EMLoopLoanViewModel;-><init>(Lcom/loan/cash/credit/core/util/thread/AppExecutors;Lteam/opay/easemoni/module/loop/loan/EMLoopLoanRepository;)V

    return-object v0

    .line 45
    :pswitch_2a
    new-instance v0, Lteam/opay/easemoni/module/loan/viewmodel/EMLoanIDAndLivenessViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->x()Lteam/opay/easemoni/module/loan/viewmodel/EMLoanIDAndLivenessRepository;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/loan/viewmodel/EMLoanIDAndLivenessViewModel;-><init>(Lteam/opay/easemoni/module/loan/viewmodel/EMLoanIDAndLivenessRepository;)V

    return-object v0

    .line 46
    :pswitch_2b
    new-instance v0, Lteam/opay/easemoni/module/home/EMHomeViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->Z()Lteam/opay/easemoni/module/home/OKashHomeRepository;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/home/EMHomeViewModel;-><init>(Lteam/opay/easemoni/module/home/OKashHomeRepository;)V

    return-object v0

    .line 47
    :pswitch_2c
    new-instance v0, Lteam/opay/easemoni/module/loan/viewmodel/EMGetFundsViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->w()Lteam/opay/easemoni/module/loan/viewmodel/EMGetFundsRepository;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->y()Lteam/opay/easemoni/module/loop/loan/EMLoopLoanRepository;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lteam/opay/easemoni/module/loan/viewmodel/EMGetFundsViewModel;-><init>(Lteam/opay/easemoni/module/loan/viewmodel/EMGetFundsRepository;Lteam/opay/easemoni/module/loop/loan/EMLoopLoanRepository;)V

    return-object v0

    .line 48
    :pswitch_2d
    new-instance v0, Lteam/opay/easemoni/module/home/EMDialogContainerViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->Y()Lteam/opay/easemoni/module/home/OKashDialogContainerRepository;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/home/EMDialogContainerViewModel;-><init>(Lteam/opay/easemoni/module/home/OKashDialogContainerRepository;)V

    return-object v0

    .line 49
    :pswitch_2e
    new-instance v0, Lteam/opay/easemoni/module/defer/viewmodel/EMDeferListViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->v()Lteam/opay/easemoni/module/defer/viewmodel/EMDeferListRepository;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/defer/viewmodel/EMDeferListViewModel;-><init>(Lteam/opay/easemoni/module/defer/viewmodel/EMDeferListRepository;)V

    return-object v0

    .line 50
    :pswitch_2f
    new-instance v0, Lteam/opay/easemoni/module/defer/viewmodel/EMDeferDetailViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->u()Lteam/opay/easemoni/module/defer/viewmodel/EMDeferDetailRepository;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/defer/viewmodel/EMDeferDetailViewModel;-><init>(Lteam/opay/easemoni/module/defer/viewmodel/EMDeferDetailRepository;)V

    return-object v0

    .line 51
    :pswitch_30
    new-instance v0, Lteam/opay/easemoni/module/account/viewmodel/EMCouponsViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->t()Lteam/opay/easemoni/module/account/repository/EMCouponsRepository;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/account/viewmodel/EMCouponsViewModel;-><init>(Lteam/opay/easemoni/module/account/repository/EMCouponsRepository;)V

    return-object v0

    .line 52
    :pswitch_31
    new-instance v0, Lteam/opay/easemoni/module/coupon/EMCouponViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->s()Lteam/opay/easemoni/module/coupon/EMCouponRepository;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/coupon/EMCouponViewModel;-><init>(Lteam/opay/easemoni/module/coupon/EMCouponRepository;)V

    return-object v0

    .line 53
    :pswitch_32
    new-instance v0, Lteam/opay/easemoni/module/card/viewmodel/EMCardViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->q()Lteam/opay/easemoni/module/loop/repayment/EMCardPaymentRepository;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/card/viewmodel/EMCardViewModel;-><init>(Lteam/opay/easemoni/module/loop/repayment/EMCardPaymentRepository;)V

    return-object v0

    .line 54
    :pswitch_33
    new-instance v0, Lteam/opay/easemoni/module/loop/repayment/EMCardPaymentViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->q()Lteam/opay/easemoni/module/loop/repayment/EMCardPaymentRepository;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/loop/repayment/EMCardPaymentViewModel;-><init>(Lteam/opay/easemoni/module/loop/repayment/EMCardPaymentRepository;)V

    return-object v0

    .line 55
    :pswitch_34
    new-instance v0, Lteam/opay/easemoni/module/card/viewmodel/EMCardModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->r()Lteam/opay/easemoni/module/card/viewmodel/EMCardRepository;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/card/viewmodel/EMCardModel;-><init>(Lteam/opay/easemoni/module/card/viewmodel/EMCardRepository;)V

    return-object v0

    .line 56
    :pswitch_35
    new-instance v0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->p()Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->w()Lteam/opay/easemoni/module/loan/viewmodel/EMGetFundsRepository;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;-><init>(Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;Lteam/opay/easemoni/module/loan/viewmodel/EMGetFundsRepository;)V

    return-object v0

    .line 57
    :pswitch_36
    new-instance v0, Lteam/opay/easemoni/module/bvn/EMBvnRetrievalViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->o()Lteam/opay/easemoni/module/bvn/EMBvnRetrievalRepository;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/bvn/EMBvnRetrievalViewModel;-><init>(Lteam/opay/easemoni/module/bvn/EMBvnRetrievalRepository;)V

    return-object v0

    .line 58
    :pswitch_37
    new-instance v0, Lteam/opay/easemoni/module/bvn/otp/EMBvnOTPViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->d0()Lteam/opay/easemoni/module/bvn/otp/OKashOTPAuthRepository;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/bvn/otp/EMBvnOTPViewModel;-><init>(Lteam/opay/easemoni/module/bvn/otp/OKashOTPAuthRepository;)V

    return-object v0

    .line 59
    :pswitch_38
    new-instance v0, Lteam/opay/easemoni/module/bank/viewmodel/EMBankViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->W()Lteam/opay/easemoni/module/bank/viewmodel/OKashBankRepository;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/bank/viewmodel/EMBankViewModel;-><init>(Lteam/opay/easemoni/module/bank/viewmodel/OKashBankRepository;)V

    return-object v0

    .line 60
    :pswitch_39
    new-instance v0, Lteam/opay/easemoni/module/account/viewmodel/EMAutoDebitManagerModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->n()Lteam/opay/easemoni/module/account/repository/EMAutoDebitManagerRepository;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/account/viewmodel/EMAutoDebitManagerModel;-><init>(Lteam/opay/easemoni/module/account/repository/EMAutoDebitManagerRepository;)V

    return-object v0

    .line 61
    :pswitch_3a
    new-instance v0, Lteam/opay/easemoni/module/declined2okash/Declined2OKashViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->m()Lteam/opay/easemoni/module/declined2okash/Declined2OKashRepository;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/declined2okash/Declined2OKashViewModel;-><init>(Lteam/opay/easemoni/module/declined2okash/Declined2OKashRepository;)V

    return-object v0

    .line 62
    :pswitch_3b
    new-instance v0, Lteam/opay/business/csc/main/CscViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v3

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->l()Lteam/opay/business/csc/main/CscRepository;

    move-result-object v4

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-static {v1}, Lteam/opay/pay/android/a$n;->c(Lteam/opay/pay/android/a$n;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v5

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$j;->o()Lxd;

    move-result-object v6

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$j;->m()Lqc;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lteam/opay/business/csc/main/CscViewModel;-><init>(Landroid/app/Application;Lteam/opay/business/csc/main/CscRepository;Landroidx/lifecycle/SavedStateHandle;Lxd;Lqc;)V

    return-object v0

    .line 63
    :pswitch_3c
    new-instance v0, Lteam/opay/easemoni/module/login/activity/viewmodel/CountDownViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/login/activity/viewmodel/CountDownViewModel;-><init>(Landroid/app/Application;)V

    return-object v0

    .line 64
    :pswitch_3d
    new-instance v0, Lteam/opay/pay/home/security/closeaccount/CloseAccountViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->l0:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/pay/home/security/closeaccount/CloseAccountRepository;

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/api/e;

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v3}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v3

    invoke-static {v3}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lteam/opay/pay/home/security/closeaccount/CloseAccountViewModel;-><init>(Lteam/opay/pay/home/security/closeaccount/CloseAccountRepository;Lteam/opay/core/api/e;Landroid/app/Application;)V

    return-object v0

    .line 65
    :pswitch_3e
    new-instance v0, Lteam/opay/pay/cashier/choosecategory/ChooseCategoryViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/api/e;

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v3}, Lteam/opay/pay/android/a$n;->k()Lteam/opay/pay/cashier/choosecategory/CategoryRepository;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lteam/opay/pay/cashier/choosecategory/ChooseCategoryViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/api/e;Lteam/opay/pay/cashier/choosecategory/CategoryRepository;)V

    return-object v0

    .line 66
    :pswitch_3f
    new-instance v0, Lteam/opay/pay/account/ChangeMobileViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->A:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/auth/AuthRepository;

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->r:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/api/SessionRepository;

    iget-object v4, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v4, v4, Lteam/opay/pay/android/a$j;->k0:Lm3c;

    invoke-interface {v4}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lteam/opay/pay/account/ChangeMobileRepository;

    invoke-direct {v0, v1, v2, v3, v4}, Lteam/opay/pay/account/ChangeMobileViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/auth/AuthRepository;Lteam/opay/core/api/SessionRepository;Lteam/opay/pay/account/ChangeMobileRepository;)V

    return-object v0

    .line 67
    :pswitch_40
    new-instance v0, Lteam/opay/pay/cashio/CashViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/core/api/e;

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v3}, Lteam/opay/pay/android/a$j;->L()Lteam/opay/pay/home/pay/ServicesDao;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lteam/opay/pay/cashio/CashViewModel;-><init>(Lteam/opay/core/api/e;Landroid/app/Application;Lteam/opay/pay/home/pay/ServicesDao;)V

    return-object v0

    .line 68
    :pswitch_41
    new-instance v0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->j0:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls22;

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/api/e;

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->F:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/api/Features;

    invoke-direct {v0, v1, v2, v3}, Lteam/opay/pay/wallet/cashback/CashBackViewModel;-><init>(Ls22;Lteam/opay/core/api/e;Lteam/opay/core/api/Features;)V

    return-object v0

    .line 69
    :pswitch_42
    new-instance v0, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->j()Lteam/opay/business/transfer/flow/cashback/CashBackRepository;

    move-result-object v2

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-static {v3}, Lteam/opay/pay/android/a$n;->c(Lteam/opay/pay/android/a$n;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;-><init>(Landroid/app/Application;Lteam/opay/business/transfer/flow/cashback/CashBackRepository;Landroidx/lifecycle/SavedStateHandle;)V

    return-object v0

    .line 70
    :pswitch_43
    new-instance v0, Lteam/opay/core/card/CardViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->g0:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/core/card/CardDataRepository;

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/api/e;

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->h0:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/pay/account/verify/VerifyRepository;

    iget-object v4, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v4}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v4

    invoke-static {v4}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lteam/opay/core/card/CardViewModel;-><init>(Lteam/opay/core/card/CardDataRepository;Lteam/opay/core/api/e;Lteam/opay/pay/account/verify/VerifyRepository;Landroid/app/Application;)V

    return-object v0

    .line 71
    :pswitch_44
    new-instance v0, Lteam/opay/business/core/BusinessViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->e:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/business/core/BusinessRepository;

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-static {v3}, Lteam/opay/pay/android/a$n;->c(Lteam/opay/pay/android/a$n;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lteam/opay/business/core/BusinessViewModel;-><init>(Landroid/app/Application;Lteam/opay/business/core/BusinessRepository;Landroidx/lifecycle/SavedStateHandle;)V

    return-object v0

    .line 72
    :pswitch_45
    new-instance v0, Lteam/opay/pay/home/security/BiometricSettingViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->f0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/pay/biometric/BiometricRepository;

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/api/e;

    iget-object v4, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v4, v4, Lteam/opay/pay/android/a$j;->F:Lm3c;

    invoke-interface {v4}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lteam/opay/core/api/Features;

    invoke-direct {v0, v1, v2, v3, v4}, Lteam/opay/pay/home/security/BiometricSettingViewModel;-><init>(Landroid/app/Application;Lteam/opay/pay/biometric/BiometricRepository;Lteam/opay/core/api/e;Lteam/opay/core/api/Features;)V

    return-object v0

    .line 73
    :pswitch_46
    new-instance v0, Lteam/opay/pay/biometric/BiometricSavePayViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->e0:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/pay/home/security/SecretSecurityRepository;

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->F:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/api/Features;

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/biometric/BiometricSavePayViewModel;-><init>(Lteam/opay/pay/home/security/SecretSecurityRepository;Lteam/opay/core/api/Features;)V

    return-object v0

    .line 74
    :pswitch_47
    new-instance v0, Lteam/opay/pay/biometric/BiometricOpenViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/pay/biometric/BiometricOpenViewModel;-><init>(Landroid/app/Application;)V

    return-object v0

    .line 75
    :pswitch_48
    new-instance v0, Lteam/opay/pay/history/download/BillDownloadViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/api/e;

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->c0:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/pay/history/download/BillDownloadRepository;

    invoke-direct {v0, v1, v2, v3}, Lteam/opay/pay/history/download/BillDownloadViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/api/e;Lteam/opay/pay/history/download/BillDownloadRepository;)V

    return-object v0

    .line 76
    :pswitch_49
    new-instance v0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/core/api/e;

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->b0:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/pay/payment/betting/BettingRepository;

    invoke-direct {v0, v1, v2, v3}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;-><init>(Lteam/opay/core/api/e;Landroid/app/Application;Lteam/opay/pay/payment/betting/BettingRepository;)V

    return-object v0

    .line 77
    :pswitch_4a
    new-instance v0, Lteam/opay/pay/payment/betting/BettingProviderViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->Z:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxt;

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/payment/betting/BettingProviderViewModel;-><init>(Landroid/app/Application;Lxt;)V

    return-object v0

    .line 78
    :pswitch_4b
    new-instance v0, Lteam/opay/pay/payment/betting/BettingHistoryViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/core/api/e;

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/payment/betting/BettingHistoryViewModel;-><init>(Lteam/opay/core/api/e;Landroid/app/Application;)V

    return-object v0

    .line 79
    :pswitch_4c
    new-instance v0, Lteam/opay/pay/payment/BeneficiaryViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/pay/payment/BeneficiaryViewModel;-><init>(Landroid/app/Application;)V

    return-object v0

    .line 80
    :pswitch_4d
    new-instance v0, Lteam/opay/pay/android/arch/BaseViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->F:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/core/api/Features;

    invoke-direct {v0, v1}, Lteam/opay/pay/android/arch/BaseViewModel;-><init>(Lteam/opay/core/api/Features;)V

    return-object v0

    .line 81
    :pswitch_4e
    iget-object v0, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ltn0;->a(Landroid/app/Application;)Lteam/opay/core/api/BaseAndroidViewModel;

    move-result-object v1

    invoke-static {v0, v1}, Lteam/opay/pay/android/a$n;->d(Lteam/opay/pay/android/a$n;Lteam/opay/core/api/BaseAndroidViewModel;)Lteam/opay/core/api/BaseAndroidViewModel;

    move-result-object v0

    return-object v0

    .line 82
    :pswitch_4f
    new-instance v0, Lteam/opay/opb/transfer/bank/BankViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->i()Lteam/opay/opb/transfer/bank/BankRepository;

    move-result-object v2

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-static {v3}, Lteam/opay/pay/android/a$n;->c(Lteam/opay/pay/android/a$n;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lteam/opay/opb/transfer/bank/BankViewModel;-><init>(Landroid/app/Application;Lteam/opay/opb/transfer/bank/BankRepository;Landroidx/lifecycle/SavedStateHandle;)V

    return-object v0

    .line 83
    :pswitch_50
    new-instance v0, Lteam/opay/pay/home/tabs/BankTransferViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->T:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lteam/opay/pay/payment/PaymentRepository;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->V:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lteam/opay/pay/bank/BankRepository;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->W:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lteam/opay/pay/home/tabs/ac/BankTransferRepository;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$j;->L()Lteam/opay/pay/home/pay/ServicesDao;

    move-result-object v8

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v9

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lteam/opay/core/api/e;

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lteam/opay/pay/home/tabs/BankTransferViewModel;-><init>(Lteam/opay/pay/payment/PaymentRepository;Lteam/opay/pay/bank/BankRepository;Lteam/opay/pay/home/tabs/ac/BankTransferRepository;Lteam/opay/pay/home/pay/ServicesDao;Landroid/app/Application;Lteam/opay/core/api/e;)V

    return-object v0

    .line 84
    :pswitch_51
    new-instance v0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->S:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/pay/history/balance/BalanceHistoryRepository;

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/api/e;

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->F:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/api/Features;

    invoke-direct {v0, v1, v2, v3}, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;-><init>(Lteam/opay/pay/history/balance/BalanceHistoryRepository;Lteam/opay/core/api/e;Lteam/opay/core/api/Features;)V

    return-object v0

    .line 85
    :pswitch_52
    new-instance v0, Lteam/opay/pay/cashier/newpayment/AutoSubOWealthViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->Q:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/pay/cashier/newpayment/PaymentOWealthRepository;

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/newpayment/AutoSubOWealthViewModel;-><init>(Landroid/app/Application;Lteam/opay/pay/cashier/newpayment/PaymentOWealthRepository;)V

    return-object v0

    .line 86
    :pswitch_53
    new-instance v0, Lteam/opay/opb/qrcode/scan/AlbumViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-static {v2}, Lteam/opay/pay/android/a$n;->c(Lteam/opay/pay/android/a$n;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lteam/opay/opb/qrcode/scan/AlbumViewModel;-><init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;)V

    return-object v0

    .line 87
    :pswitch_54
    new-instance v0, Lteam/opay/pay/payment/AjiraViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->P:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/core/payment/WalletRepository;

    invoke-direct {v0, v1}, Lteam/opay/pay/payment/AjiraViewModel;-><init>(Lteam/opay/core/payment/WalletRepository;)V

    return-object v0

    .line 88
    :pswitch_55
    new-instance v0, Lteam/opay/pay/payment/airtime/AirtimeRewardsBundlesViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/pay/payment/airtime/AirtimeRewardsBundlesViewModel;-><init>(Landroid/app/Application;)V

    return-object v0

    .line 89
    :pswitch_56
    new-instance v0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/api/e;

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v3}, Lteam/opay/pay/android/a$j;->L()Lteam/opay/pay/home/pay/ServicesDao;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/api/e;Lteam/opay/pay/home/pay/ServicesDao;)V

    return-object v0

    .line 90
    :pswitch_57
    new-instance v0, Lteam/opay/pay/kyc/agent/AgentUpgradeDocumentViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->H:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/core/account/AccountRepository;

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->N:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/pay/kyc/bvn/BvnRepository;

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/api/e;

    iget-object v4, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v4, v4, Lteam/opay/pay/android/a$j;->F:Lm3c;

    invoke-interface {v4}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lteam/opay/core/api/Features;

    invoke-direct {v0, v1, v2, v3, v4}, Lteam/opay/pay/kyc/agent/AgentUpgradeDocumentViewModel;-><init>(Lteam/opay/core/account/AccountRepository;Lteam/opay/pay/kyc/bvn/BvnRepository;Lteam/opay/core/api/e;Lteam/opay/core/api/Features;)V

    return-object v0

    .line 91
    :pswitch_58
    new-instance v0, Lteam/opay/pay/wallet/AddMoneyViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/core/api/e;

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->L:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->F:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/api/Features;

    iget-object v4, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v4, v4, Lteam/opay/pay/android/a$j;->M:Lm3c;

    invoke-interface {v4}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laj0;

    invoke-direct {v0, v1, v2, v3, v4}, Lteam/opay/pay/wallet/AddMoneyViewModel;-><init>(Lteam/opay/core/api/e;Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;Lteam/opay/core/api/Features;Laj0;)V

    return-object v0

    .line 92
    :pswitch_59
    new-instance v0, Lteam/opay/pay/wallet/addmoney/AddMoneyItemViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->F:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/core/api/Features;

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->H:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/account/AccountRepository;

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/wallet/addmoney/AddMoneyItemViewModel;-><init>(Lteam/opay/core/api/Features;Lteam/opay/core/account/AccountRepository;)V

    return-object v0

    .line 93
    :pswitch_5a
    new-instance v0, Lteam/opay/business/provider/active/ActiveViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-static {v2}, Lteam/opay/pay/android/a$n;->c(Lteam/opay/pay/android/a$n;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v2

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v3}, Lteam/opay/pay/android/a$j;->o()Lxd;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lteam/opay/business/provider/active/ActiveViewModel;-><init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lxd;)V

    return-object v0

    .line 94
    :pswitch_5b
    new-instance v0, Lteam/opay/pay/settings/AccountViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->H:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lteam/opay/core/account/AccountRepository;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->j0()Lteam/opay/pay/kyc/PosLevelRespository;

    move-result-object v6

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->I:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lknf;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->t0()Lteam/opay/pay/kyc/SignAgreementRepository;

    move-result-object v8

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lteam/opay/core/api/e;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->F:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lteam/opay/core/api/Features;

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lteam/opay/pay/settings/AccountViewModel;-><init>(Lteam/opay/core/account/AccountRepository;Lteam/opay/pay/kyc/PosLevelRespository;Lknf;Lteam/opay/pay/kyc/SignAgreementRepository;Lteam/opay/core/api/e;Lteam/opay/core/api/Features;)V

    return-object v0

    .line 95
    :pswitch_5c
    new-instance v0, Lteam/opay/pay/onboarding/AccountThirdStepViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->h()Lteam/opay/pay/onboarding/AccountStepRepository;

    move-result-object v2

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->r:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/api/SessionRepository;

    invoke-direct {v0, v1, v2, v3}, Lteam/opay/pay/onboarding/AccountThirdStepViewModel;-><init>(Landroid/app/Application;Lteam/opay/pay/onboarding/AccountStepRepository;Lteam/opay/core/api/SessionRepository;)V

    return-object v0

    .line 96
    :pswitch_5d
    new-instance v0, Lcom/opay/team/newhome/viewmodel/AccountNewViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->D:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/api/e;

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v3}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v3

    invoke-static {v3}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/opay/team/newhome/viewmodel/AccountNewViewModel;-><init>(Lcom/opay/team/newhome/viewmodel/AccountNewRepository;Lteam/opay/core/api/e;Landroid/app/Application;)V

    return-object v0

    .line 97
    :pswitch_5e
    new-instance v0, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;-><init>(Landroid/app/Application;)V

    return-object v0

    .line 98
    :pswitch_5f
    new-instance v0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->B:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/pay/kyc/base/KycSceneRepository;

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;-><init>(Landroid/app/Application;Lteam/opay/pay/kyc/base/KycSceneRepository;)V

    return-object v0

    .line 99
    :pswitch_60
    new-instance v0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->B:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/pay/kyc/base/KycSceneRepository;

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;-><init>(Landroid/app/Application;Lteam/opay/pay/kyc/base/KycSceneRepository;)V

    return-object v0

    .line 100
    :pswitch_61
    new-instance v0, Lteam/opay/pay/kyc/base/AbstractSetAddressViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    new-instance v2, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v2}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v3, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->B:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/pay/kyc/base/KycSceneRepository;

    iget-object v4, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v4, v4, Lteam/opay/pay/android/a$j;->C:Lm3c;

    invoke-interface {v4}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lteam/opay/pay/address/AddressDao;

    invoke-direct {v0, v1, v2, v3, v4}, Lteam/opay/pay/kyc/base/AbstractSetAddressViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/kyc/base/KycSceneRepository;Lteam/opay/pay/address/AddressDao;)V

    return-object v0

    .line 101
    :pswitch_62
    new-instance v0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v6

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->n:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lteam/opay/core/settings/SettingsStorage;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->y:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lteam/opay/pay/kyc/customer/KycRepository;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->r:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lteam/opay/core/api/SessionRepository;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->z:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lteam/opay/pay/account/otp/OtpFetchRepository;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->A:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lteam/opay/core/auth/AuthRepository;

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/settings/SettingsStorage;Lteam/opay/pay/kyc/customer/KycRepository;Lteam/opay/core/api/SessionRepository;Lteam/opay/pay/account/otp/OtpFetchRepository;Lteam/opay/core/auth/AuthRepository;)V

    return-object v0

    .line 102
    :pswitch_63
    new-instance v0, Lteam/opay/easemoni/module/account/fragment/AboutViewModel;

    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$n;->b0()Lteam/opay/easemoni/module/account/fragment/OKashMyLoanRepository;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/easemoni/module/account/fragment/AboutViewModel;-><init>(Lteam/opay/easemoni/module/account/fragment/OKashMyLoanRepository;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lteam/opay/pay/android/a$n$a;->d:I

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Lteam/opay/pay/android/a$n$a;->d:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 3
    :pswitch_0
    new-instance v1, Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageViewModel;-><init>(Landroid/app/Application;)V

    return-object v1

    .line 4
    :pswitch_1
    new-instance v1, Lteam/opay/pay/history/details/VoucherPackageDetailsViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lteam/opay/pay/history/details/VoucherPackageDetailsViewModel;-><init>(Landroid/app/Application;)V

    return-object v1

    .line 5
    :pswitch_2
    new-instance v1, Lteam/opay/pay/account/verify/VerifyViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/api/e;

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v4, v4, Lteam/opay/pay/android/a$j;->h0:Lm3c;

    invoke-interface {v4}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lteam/opay/pay/account/verify/VerifyRepository;

    iget-object v5, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v5, v5, Lteam/opay/pay/android/a$j;->f0:Lm3c;

    invoke-interface {v5}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lteam/opay/pay/biometric/BiometricRepository;

    invoke-direct {v1, v2, v3, v4, v5}, Lteam/opay/pay/account/verify/VerifyViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/api/e;Lteam/opay/pay/account/verify/VerifyRepository;Lteam/opay/pay/biometric/BiometricRepository;)V

    return-object v1

    .line 6
    :pswitch_3
    new-instance v1, Lteam/opay/pay/email/VerifyEmailViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->H:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/account/AccountRepository;

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->h0:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/pay/account/verify/VerifyRepository;

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v4}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v4

    invoke-static {v4}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lteam/opay/pay/email/VerifyEmailViewModel;-><init>(Lteam/opay/core/account/AccountRepository;Lteam/opay/pay/account/verify/VerifyRepository;Landroid/app/Application;)V

    return-object v1

    .line 7
    :pswitch_4
    new-instance v1, Lteam/opay/pay/kyc/UpgradeByBankInfoViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->B:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/pay/kyc/base/KycSceneRepository;

    invoke-direct {v1, v2, v3}, Lteam/opay/pay/kyc/UpgradeByBankInfoViewModel;-><init>(Landroid/app/Application;Lteam/opay/pay/kyc/base/KycSceneRepository;)V

    return-object v1

    .line 8
    :pswitch_5
    new-instance v1, Lteam/opay/business/provider/tranfer/TransferViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v3}, Lteam/opay/pay/android/a$j;->p()Lteam/opay/business/provider/active/ActiveProviderRepository;

    move-result-object v3

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-static {v4}, Lteam/opay/pay/android/a$n;->c(Lteam/opay/pay/android/a$n;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v4

    iget-object v5, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v5}, Lteam/opay/pay/android/a$j;->T()Lv8f;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lteam/opay/business/provider/tranfer/TransferViewModel;-><init>(Landroid/app/Application;Lteam/opay/business/provider/active/ActiveProviderRepository;Landroidx/lifecycle/SavedStateHandle;Lv8f;)V

    return-object v1

    .line 9
    :pswitch_6
    new-instance v1, Lteam/opay/pay/wallet/transferhistory/TransferHistoryViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->W0:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v4, v4, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v4}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lteam/opay/core/api/e;

    invoke-direct {v1, v2, v3, v4}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryViewModel;-><init>(Landroid/app/Application;Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;Lteam/opay/core/api/e;)V

    return-object v1

    .line 10
    :pswitch_7
    new-instance v1, Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v6

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->y0()Lteam/opay/business/transfer/flow/TransferFlowRepository;

    move-result-object v7

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-static {v2}, Lteam/opay/pay/android/a$n;->c(Lteam/opay/pay/android/a$n;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v8

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$j;->y()Lfa2;

    move-result-object v9

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$j;->o()Lxd;

    move-result-object v10

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lteam/opay/business/transfer/flow/TransferFlowViewModel;-><init>(Landroid/app/Application;Lteam/opay/business/transfer/flow/TransferFlowRepository;Landroidx/lifecycle/SavedStateHandle;Lfa2;Lxd;)V

    return-object v1

    .line 11
    :pswitch_8
    new-instance v1, Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v12

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lteam/opay/core/api/e;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->N0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lteam/opay/pay/transfer/contact/TransferContactRepository;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->r0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lteam/opay/pay/payment/TopupRepository;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->n:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lteam/opay/core/settings/SettingsStorage;

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/api/e;Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/payment/TopupRepository;Lteam/opay/core/settings/SettingsStorage;)V

    return-object v1

    .line 12
    :pswitch_9
    new-instance v1, Lteam/opay/pay/transaction/TransactionViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/api/e;

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v4, v4, Lteam/opay/pay/android/a$j;->T0:Lm3c;

    invoke-interface {v4}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lteam/opay/pay/transaction/TransactionRepository;

    invoke-direct {v1, v2, v3, v4}, Lteam/opay/pay/transaction/TransactionViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/api/e;Lteam/opay/pay/transaction/TransactionRepository;)V

    return-object v1

    .line 13
    :pswitch_a
    new-instance v1, Lteam/opay/pay/history/details/TransactionDetailsViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->K0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/pay/history/UserTransactionsDetailRepository;

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->F:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/api/Features;

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v4, v4, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v4}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lteam/opay/core/api/e;

    invoke-direct {v1, v2, v3, v4}, Lteam/opay/pay/history/details/TransactionDetailsViewModel;-><init>(Lteam/opay/pay/history/UserTransactionsDetailRepository;Lteam/opay/core/api/Features;Lteam/opay/core/api/e;)V

    return-object v1

    .line 14
    :pswitch_b
    new-instance v1, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->K0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/pay/history/UserTransactionsDetailRepository;

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->F:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/api/Features;

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v4, v4, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v4}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lteam/opay/core/api/e;

    invoke-direct {v1, v2, v3, v4}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;-><init>(Lteam/opay/pay/history/UserTransactionsDetailRepository;Lteam/opay/core/api/Features;Lteam/opay/core/api/e;)V

    return-object v1

    .line 15
    :pswitch_c
    new-instance v1, Lteam/opay/pay/payment/record/TopUpRecordViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/api/e;

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v4}, Lteam/opay/pay/android/a$n;->x0()Lteam/opay/pay/payment/record/TopUpRecordRepository;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lteam/opay/pay/payment/record/TopUpRecordViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/api/e;Lteam/opay/pay/payment/record/TopUpRecordRepository;)V

    return-object v1

    .line 16
    :pswitch_d
    new-instance v1, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;-><init>(Landroid/app/Application;)V

    return-object v1

    .line 17
    :pswitch_e
    new-instance v1, Lteam/opay/pay/reward/marketing/TemplateViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v3}, Lteam/opay/pay/android/a$n;->T()Lteam/opay/pay/reward/marketing/MarketingRepository;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lteam/opay/pay/reward/marketing/TemplateViewModel;-><init>(Landroid/app/Application;Lteam/opay/pay/reward/marketing/MarketingRepository;)V

    return-object v1

    .line 18
    :pswitch_f
    new-instance v1, Lteam/opay/pay/payment/tv/TVTopupViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/api/e;

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v3}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v3

    invoke-static {v3}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lteam/opay/pay/payment/tv/TVTopupViewModel;-><init>(Lteam/opay/core/api/e;Landroid/app/Application;)V

    return-object v1

    .line 19
    :pswitch_10
    new-instance v1, Lteam/opay/easemoni/module/common/SystemConfigViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->w0()Lteam/opay/easemoni/module/common/SystemConfigRepository;

    move-result-object v2

    invoke-direct {v1, v2}, Lteam/opay/easemoni/module/common/SystemConfigViewModel;-><init>(Lteam/opay/easemoni/module/common/SystemConfigRepository;)V

    return-object v1

    .line 20
    :pswitch_11
    new-instance v1, Lteam/opay/sme/store/StoreViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v3}, Lteam/opay/pay/android/a$n;->v0()Lteam/opay/sme/store/StoreRepository;

    move-result-object v3

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v4}, Lteam/opay/pay/android/a$j;->t()Lvj0;

    move-result-object v4

    iget-object v5, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-static {v5}, Lteam/opay/pay/android/a$n;->c(Lteam/opay/pay/android/a$n;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lteam/opay/sme/store/StoreViewModel;-><init>(Landroid/app/Application;Lteam/opay/sme/store/StoreRepository;Lvj0;Landroidx/lifecycle/SavedStateHandle;)V

    return-object v1

    .line 21
    :pswitch_12
    new-instance v1, Lteam/opay/pay/home/SplashViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->F0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lteam/opay/pay/favorites/FavoritesRepository;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->r:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lteam/opay/core/api/SessionRepository;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->A:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lteam/opay/core/auth/AuthRepository;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->Q0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lteam/opay/pay/common/CommonRepository;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->F:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lteam/opay/core/api/Features;

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lteam/opay/pay/home/SplashViewModel;-><init>(Lteam/opay/pay/favorites/FavoritesRepository;Lteam/opay/core/api/SessionRepository;Lteam/opay/core/auth/AuthRepository;Lteam/opay/pay/common/CommonRepository;Lteam/opay/core/api/Features;)V

    return-object v1

    .line 22
    :pswitch_13
    new-instance v1, Lteam/opay/pay/settings/sms/SmsSubscribeViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v3}, Lteam/opay/pay/android/a$n;->u0()Lteam/opay/pay/settings/sms/SmsSubscribeRepository;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lteam/opay/pay/settings/sms/SmsSubscribeViewModel;-><init>(Landroid/app/Application;Lteam/opay/pay/settings/sms/SmsSubscribeRepository;)V

    return-object v1

    .line 23
    :pswitch_14
    new-instance v1, Lteam/opay/pay/onboarding/tabs/SignUpViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->r:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lteam/opay/core/api/SessionRepository;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->A:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lteam/opay/core/auth/AuthRepository;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->f0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lteam/opay/pay/biometric/BiometricRepository;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v8

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lteam/opay/core/api/e;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lteam/opay/pay/onboarding/tabs/SignUpViewModel;-><init>(Lteam/opay/core/api/SessionRepository;Lteam/opay/core/auth/AuthRepository;Lteam/opay/pay/biometric/BiometricRepository;Landroid/app/Application;Lteam/opay/core/api/e;)V

    return-object v1

    .line 24
    :pswitch_15
    new-instance v1, Lteam/opay/business/share/ShareViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v3}, Lteam/opay/pay/android/a$n;->s0()Lteam/opay/business/share/ShareRepository;

    move-result-object v3

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-static {v4}, Lteam/opay/pay/android/a$n;->c(Lteam/opay/pay/android/a$n;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lteam/opay/business/share/ShareViewModel;-><init>(Landroid/app/Application;Lteam/opay/business/share/ShareRepository;Landroidx/lifecycle/SavedStateHandle;)V

    return-object v1

    .line 25
    :pswitch_16
    new-instance v1, Lteam/opay/pay/cashier/result/ShareShortUlViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/api/e;

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v4, v4, Lteam/opay/pay/android/a$j;->O0:Lm3c;

    invoke-interface {v4}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lteam/opay/pay/cashier/result/ShareShortUrlRepository;

    invoke-direct {v1, v2, v3, v4}, Lteam/opay/pay/cashier/result/ShareShortUlViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/api/e;Lteam/opay/pay/cashier/result/ShareShortUrlRepository;)V

    return-object v1

    .line 26
    :pswitch_17
    new-instance v1, Lteam/opay/pay/cashier/result/ShareContactViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->N0:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/pay/transfer/contact/TransferContactRepository;

    invoke-direct {v1, v2, v3}, Lteam/opay/pay/cashier/result/ShareContactViewModel;-><init>(Landroid/app/Application;Lteam/opay/pay/transfer/contact/TransferContactRepository;)V

    return-object v1

    .line 27
    :pswitch_18
    new-instance v1, Lteam/opay/pay/kyc/base/SetAddressViewModel;

    new-instance v2, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v2}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->B:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/pay/kyc/base/KycSceneRepository;

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v4, v4, Lteam/opay/pay/android/a$j;->y:Lm3c;

    invoke-interface {v4}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lteam/opay/pay/kyc/customer/KycRepository;

    iget-object v5, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v5, v5, Lteam/opay/pay/android/a$j;->C:Lm3c;

    invoke-interface {v5}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lteam/opay/pay/address/AddressDao;

    invoke-direct {v1, v2, v3, v4, v5}, Lteam/opay/pay/kyc/base/SetAddressViewModel;-><init>(Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/kyc/base/KycSceneRepository;Lteam/opay/pay/kyc/customer/KycRepository;Lteam/opay/pay/address/AddressDao;)V

    return-object v1

    .line 28
    :pswitch_19
    new-instance v1, Lteam/opay/pay/sensesecurity/SecurityTestingViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->n:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/settings/SettingsStorage;

    invoke-direct {v1, v2, v3}, Lteam/opay/pay/sensesecurity/SecurityTestingViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/settings/SettingsStorage;)V

    return-object v1

    .line 29
    :pswitch_1a
    new-instance v1, Lteam/opay/pay/sensesecurity/SecurityMessageCenterViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lteam/opay/pay/sensesecurity/SecurityMessageCenterViewModel;-><init>(Landroid/app/Application;)V

    return-object v1

    .line 30
    :pswitch_1b
    new-instance v1, Lteam/opay/pay/sensesecurity/SecurityCenterViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->n:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/settings/SettingsStorage;

    invoke-direct {v1, v2, v3}, Lteam/opay/pay/sensesecurity/SecurityCenterViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/settings/SettingsStorage;)V

    return-object v1

    .line 31
    :pswitch_1c
    new-instance v1, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->n:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/settings/SettingsStorage;

    invoke-direct {v1, v2, v3}, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/settings/SettingsStorage;)V

    return-object v1

    .line 32
    :pswitch_1d
    iget-object v1, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->e0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/pay/home/security/SecretSecurityRepository;

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/api/e;

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v4}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v4

    invoke-static {v4}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ll8d;->a(Lteam/opay/pay/home/security/SecretSecurityRepository;Lteam/opay/core/api/e;Landroid/app/Application;)Lteam/opay/pay/home/security/SecretSecurityViewModel;

    move-result-object v2

    invoke-static {v1, v2}, Lteam/opay/pay/android/a$n;->g(Lteam/opay/pay/android/a$n;Lteam/opay/pay/home/security/SecretSecurityViewModel;)Lteam/opay/pay/home/security/SecretSecurityViewModel;

    move-result-object v1

    return-object v1

    .line 33
    :pswitch_1e
    new-instance v1, Lteam/opay/pay/home/security/SecretSecurityPasswordViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->M0:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/pay/home/security/SecretSecurityPasswordRepository;

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v4, v4, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v4}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lteam/opay/core/api/e;

    invoke-direct {v1, v2, v3, v4}, Lteam/opay/pay/home/security/SecretSecurityPasswordViewModel;-><init>(Landroid/app/Application;Lteam/opay/pay/home/security/SecretSecurityPasswordRepository;Lteam/opay/core/api/e;)V

    return-object v1

    .line 34
    :pswitch_1f
    new-instance v1, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->Z:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxt;

    invoke-direct {v1, v2, v3}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;-><init>(Landroid/app/Application;Lxt;)V

    return-object v1

    .line 35
    :pswitch_20
    new-instance v1, Lteam/opay/pay/onboarding/secondary/SecondaryOtpViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->Z:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxt;

    invoke-direct {v1, v2, v3}, Lteam/opay/pay/onboarding/secondary/SecondaryOtpViewModel;-><init>(Landroid/app/Application;Lxt;)V

    return-object v1

    .line 36
    :pswitch_21
    new-instance v1, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->Z:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxt;

    invoke-direct {v1, v2, v3}, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;-><init>(Landroid/app/Application;Lxt;)V

    return-object v1

    .line 37
    :pswitch_22
    new-instance v1, Lteam/opay/pay/kyc/base/SceneViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->B:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/pay/kyc/base/KycSceneRepository;

    invoke-direct {v1, v2, v3}, Lteam/opay/pay/kyc/base/SceneViewModel;-><init>(Landroid/app/Application;Lteam/opay/pay/kyc/base/KycSceneRepository;)V

    return-object v1

    .line 38
    :pswitch_23
    new-instance v1, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherViewModel;-><init>(Landroid/app/Application;)V

    return-object v1

    .line 39
    :pswitch_24
    new-instance v1, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherContainerViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherContainerViewModel;-><init>(Landroid/app/Application;)V

    return-object v1

    .line 40
    :pswitch_25
    new-instance v1, Lcom/opay/team/newhome/reward/tasks/RewardsTaskViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->r0()Lcom/opay/team/newhome/reward/RewardsRepository;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskViewModel;-><init>(Lcom/opay/team/newhome/reward/RewardsRepository;)V

    return-object v1

    .line 41
    :pswitch_26
    new-instance v1, Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->r0()Lcom/opay/team/newhome/reward/RewardsRepository;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/api/e;

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v4}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v4

    invoke-static {v4}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;-><init>(Lcom/opay/team/newhome/reward/RewardsRepository;Lteam/opay/core/api/e;Landroid/app/Application;)V

    return-object v1

    .line 42
    :pswitch_27
    new-instance v1, Lcom/opay/team/newhome/reward/RewardsGuestViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/opay/team/newhome/reward/RewardsGuestViewModel;-><init>(Landroid/app/Application;)V

    return-object v1

    .line 43
    :pswitch_28
    new-instance v1, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->L0:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;

    invoke-direct {v1, v2, v3}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;-><init>(Landroid/app/Application;Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;)V

    return-object v1

    .line 44
    :pswitch_29
    new-instance v1, Lteam/opay/pay/history/details/reversed/ReverseDetailsViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->K0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/pay/history/UserTransactionsDetailRepository;

    invoke-direct {v1, v2}, Lteam/opay/pay/history/details/reversed/ReverseDetailsViewModel;-><init>(Lteam/opay/pay/history/UserTransactionsDetailRepository;)V

    return-object v1

    .line 45
    :pswitch_2a
    new-instance v1, Lteam/opay/pay/onboarding/register/RegisterViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v4

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->H:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lteam/opay/core/account/AccountRepository;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->D:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->J0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lteam/opay/pay/onboarding/register/RegisterRepository;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->n:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lteam/opay/core/settings/SettingsStorage;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lteam/opay/pay/onboarding/register/RegisterViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/account/AccountRepository;Lcom/opay/team/newhome/viewmodel/AccountNewRepository;Lteam/opay/pay/onboarding/register/RegisterRepository;Lteam/opay/core/settings/SettingsStorage;)V

    return-object v1

    .line 46
    :pswitch_2b
    new-instance v1, Lteam/opay/pay/kyc/upgrade1/task/RegisterRetrieveInformationViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lteam/opay/pay/kyc/upgrade1/task/RegisterRetrieveInformationViewModel;-><init>(Landroid/app/Application;)V

    return-object v1

    .line 47
    :pswitch_2c
    new-instance v1, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideViewModel;-><init>(Landroid/app/Application;)V

    return-object v1

    .line 48
    :pswitch_2d
    new-instance v1, Lteam/opay/pay/kyc/upgrade1/dialog/RegisterIdNumberBackRemindViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lteam/opay/pay/kyc/upgrade1/dialog/RegisterIdNumberBackRemindViewModel;-><init>(Landroid/app/Application;)V

    return-object v1

    .line 49
    :pswitch_2e
    new-instance v1, Lteam/opay/pay/payment/record/RecordsTopupViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v3}, Lteam/opay/pay/android/a$n;->q0()Lteam/opay/pay/payment/record/RecordsTopupRepository;

    move-result-object v3

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v4, v4, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v4}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lteam/opay/core/api/e;

    invoke-direct {v1, v2, v3, v4}, Lteam/opay/pay/payment/record/RecordsTopupViewModel;-><init>(Landroid/app/Application;Lteam/opay/pay/payment/record/RecordsTopupRepository;Lteam/opay/core/api/e;)V

    return-object v1

    .line 50
    :pswitch_2f
    new-instance v1, Lteam/opay/sme/va/receive/ReceiveViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v6

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->p0()Lteam/opay/sme/va/receive/ReceiveRepository;

    move-result-object v7

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-static {v2}, Lteam/opay/pay/android/a$n;->c(Lteam/opay/pay/android/a$n;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v8

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$j;->N()Lxtd;

    move-result-object v9

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$j;->o()Lxd;

    move-result-object v10

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$j;->P()Lozd;

    move-result-object v11

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$j;->q()Lvh;

    move-result-object v12

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lteam/opay/sme/va/receive/ReceiveViewModel;-><init>(Landroid/app/Application;Lteam/opay/sme/va/receive/ReceiveRepository;Landroidx/lifecycle/SavedStateHandle;Lxtd;Lxd;Lozd;Lvh;)V

    return-object v1

    .line 51
    :pswitch_30
    new-instance v1, Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->r0()Lcom/opay/team/newhome/reward/RewardsRepository;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;-><init>(Lcom/opay/team/newhome/reward/RewardsRepository;)V

    return-object v1

    .line 52
    :pswitch_31
    new-instance v1, Lcom/opay/team/newhome/reward/flash/ReardsFlashButtomSheetViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/opay/team/newhome/reward/flash/ReardsFlashButtomSheetViewModel;-><init>(Landroid/app/Application;)V

    return-object v1

    .line 53
    :pswitch_32
    new-instance v1, Lteam/opay/opb/qrcode/QRCodeViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v3}, Lteam/opay/pay/android/a$n;->n0()Lteam/opay/opb/qrcode/QRCodeRepository;

    move-result-object v3

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-static {v4}, Lteam/opay/pay/android/a$n;->c(Lteam/opay/pay/android/a$n;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lteam/opay/opb/qrcode/QRCodeViewModel;-><init>(Landroid/app/Application;Lteam/opay/opb/qrcode/QRCodeRepository;Landroidx/lifecycle/SavedStateHandle;)V

    return-object v1

    .line 54
    :pswitch_33
    new-instance v1, Lteam/opay/qrcode/scanqrcode/QRCodeScanViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->o0()Lteam/opay/qrcode/scanqrcode/QRCodeScanRepository;

    move-result-object v2

    invoke-direct {v1, v2}, Lteam/opay/qrcode/scanqrcode/QRCodeScanViewModel;-><init>(Lteam/opay/qrcode/scanqrcode/QRCodeScanRepository;)V

    return-object v1

    .line 55
    :pswitch_34
    new-instance v1, Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->l0()Lteam/opay/qrcode/qrcodeparser/QRCodeParserRepository;

    move-result-object v2

    invoke-direct {v1, v2}, Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel;-><init>(Lteam/opay/qrcode/qrcodeparser/QRCodeParserRepository;)V

    return-object v1

    .line 56
    :pswitch_35
    new-instance v1, Lteam/opay/qrcode/qrcodeparser/QRCodeEMVQRProtocolParserViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->l0()Lteam/opay/qrcode/qrcodeparser/QRCodeParserRepository;

    move-result-object v2

    invoke-direct {v1, v2}, Lteam/opay/qrcode/qrcodeparser/QRCodeEMVQRProtocolParserViewModel;-><init>(Lteam/opay/qrcode/qrcodeparser/QRCodeParserRepository;)V

    return-object v1

    .line 57
    :pswitch_36
    new-instance v1, Lteam/opay/pay/settings/profile/ProfileViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->F:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/api/Features;

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v3}, Lteam/opay/pay/android/a$n;->k0()Lteam/opay/pay/settings/profile/ProfileRepository;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lteam/opay/pay/settings/profile/ProfileViewModel;-><init>(Lteam/opay/core/api/Features;Lteam/opay/pay/settings/profile/ProfileRepository;)V

    return-object v1

    .line 58
    :pswitch_37
    new-instance v1, Lteam/opay/pay/pin/PinViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->A:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/auth/AuthRepository;

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->r:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/api/SessionRepository;

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v4}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v4

    invoke-static {v4}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lteam/opay/pay/pin/PinViewModel;-><init>(Lteam/opay/core/auth/AuthRepository;Lteam/opay/core/api/SessionRepository;Landroid/app/Application;)V

    return-object v1

    .line 59
    :pswitch_38
    new-instance v1, Lteam/opay/business/pin/PinViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v3}, Lteam/opay/pay/android/a$n;->i0()Lteam/opay/business/pin/PinRepository;

    move-result-object v3

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-static {v4}, Lteam/opay/pay/android/a$n;->c(Lteam/opay/pay/android/a$n;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lteam/opay/business/pin/PinViewModel;-><init>(Landroid/app/Application;Lteam/opay/business/pin/PinRepository;Landroidx/lifecycle/SavedStateHandle;)V

    return-object v1

    .line 60
    :pswitch_39
    new-instance v1, Lteam/opay/pay/payment/verification/PinVerificationViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->T:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/pay/payment/PaymentRepository;

    invoke-direct {v1, v2}, Lteam/opay/pay/payment/verification/PinVerificationViewModel;-><init>(Lteam/opay/pay/payment/PaymentRepository;)V

    return-object v1

    .line 61
    :pswitch_3a
    new-instance v1, Lteam/opay/pay/pin/PinResetViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->A:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/auth/AuthRepository;

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->F0:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/pay/favorites/FavoritesRepository;

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v4, v4, Lteam/opay/pay/android/a$j;->F:Lm3c;

    invoke-interface {v4}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lteam/opay/core/api/Features;

    iget-object v5, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v5, v5, Lteam/opay/pay/android/a$j;->r:Lm3c;

    invoke-interface {v5}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lteam/opay/core/api/SessionRepository;

    invoke-direct {v1, v2, v3, v4, v5}, Lteam/opay/pay/pin/PinResetViewModel;-><init>(Lteam/opay/core/auth/AuthRepository;Lteam/opay/pay/favorites/FavoritesRepository;Lteam/opay/core/api/Features;Lteam/opay/core/api/SessionRepository;)V

    return-object v1

    .line 62
    :pswitch_3b
    new-instance v1, Lteam/opay/pay/payment/verification/PhoneVerificationViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/api/e;

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->T:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/pay/payment/PaymentRepository;

    invoke-direct {v1, v2, v3}, Lteam/opay/pay/payment/verification/PhoneVerificationViewModel;-><init>(Lteam/opay/core/api/e;Lteam/opay/pay/payment/PaymentRepository;)V

    return-object v1

    .line 63
    :pswitch_3c
    new-instance v1, Lteam/opay/business/payroll/PayrollViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v5

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->h0()Lteam/opay/business/payroll/PayrollRepository;

    move-result-object v6

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$j;->M()Lteam/opay/opb/transfer/bank/room/ServicesDao;

    move-result-object v7

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$j;->o()Lxd;

    move-result-object v8

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$j;->m()Lqc;

    move-result-object v9

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$j;->t()Lvj0;

    move-result-object v10

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-static {v2}, Lteam/opay/pay/android/a$n;->c(Lteam/opay/pay/android/a$n;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v11

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lteam/opay/business/payroll/PayrollViewModel;-><init>(Landroid/app/Application;Lteam/opay/business/payroll/PayrollRepository;Lteam/opay/opb/transfer/bank/room/ServicesDao;Lxd;Lqc;Lvj0;Landroidx/lifecycle/SavedStateHandle;)V

    return-object v1

    .line 64
    :pswitch_3d
    new-instance v1, Lteam/opay/pay/opay/PaymentViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->T:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/pay/payment/PaymentRepository;

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v4, v4, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v4}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lteam/opay/core/api/e;

    iget-object v5, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v5, v5, Lteam/opay/pay/android/a$j;->E:Lm3c;

    invoke-interface {v5}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfv;

    invoke-direct {v1, v2, v3, v4, v5}, Lteam/opay/pay/opay/PaymentViewModel;-><init>(Landroid/app/Application;Lteam/opay/pay/payment/PaymentRepository;Lteam/opay/core/api/e;Lfv;)V

    return-object v1

    .line 65
    :pswitch_3e
    new-instance v1, Lteam/opay/pay/settings/PaymentInstrumentsViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->L:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;

    invoke-direct {v1, v2, v3}, Lteam/opay/pay/settings/PaymentInstrumentsViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;)V

    return-object v1

    .line 66
    :pswitch_3f
    new-instance v1, Lteam/opay/pay/home/pay/PayViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->r:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/api/SessionRepository;

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/api/e;

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v4, v4, Lteam/opay/pay/android/a$j;->F:Lm3c;

    invoke-interface {v4}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lteam/opay/core/api/Features;

    invoke-direct {v1, v2, v3, v4}, Lteam/opay/pay/home/pay/PayViewModel;-><init>(Lteam/opay/core/api/SessionRepository;Lteam/opay/core/api/e;Lteam/opay/core/api/Features;)V

    return-object v1

    .line 67
    :pswitch_40
    iget-object v1, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/api/e;

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v4, v4, Lteam/opay/pay/android/a$j;->e0:Lm3c;

    invoke-interface {v4}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lteam/opay/pay/home/security/SecretSecurityRepository;

    iget-object v5, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v5, v5, Lteam/opay/pay/android/a$j;->x0:Lm3c;

    invoke-interface {v5}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lteam/opay/pay/cashier/CashierRepository;

    iget-object v6, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v6, v6, Lteam/opay/pay/android/a$j;->M:Lm3c;

    invoke-interface {v6}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laj0;

    invoke-static {v2, v3, v4, v5, v6}, Ljcb;->a(Landroid/app/Application;Lteam/opay/core/api/e;Lteam/opay/pay/home/security/SecretSecurityRepository;Lteam/opay/pay/cashier/CashierRepository;Laj0;)Lteam/opay/pay/cashier/PaySheetViewModel;

    move-result-object v2

    invoke-static {v1, v2}, Lteam/opay/pay/android/a$n;->f(Lteam/opay/pay/android/a$n;Lteam/opay/pay/cashier/PaySheetViewModel;)Lteam/opay/pay/cashier/PaySheetViewModel;

    move-result-object v1

    return-object v1

    .line 68
    :pswitch_41
    new-instance v1, Lteam/opay/pay/payment/PayBillViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/api/e;

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->F:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/api/Features;

    invoke-direct {v1, v2, v3}, Lteam/opay/pay/payment/PayBillViewModel;-><init>(Lteam/opay/core/api/e;Lteam/opay/core/api/Features;)V

    return-object v1

    .line 69
    :pswitch_42
    new-instance v1, Lteam/opay/pay/onboarding/tabs/OtpViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->F:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/api/Features;

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v3}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v3

    invoke-static {v3}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v3

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v4, v4, Lteam/opay/pay/android/a$j;->r:Lm3c;

    invoke-interface {v4}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lteam/opay/core/api/SessionRepository;

    invoke-direct {v1, v2, v3, v4}, Lteam/opay/pay/onboarding/tabs/OtpViewModel;-><init>(Lteam/opay/core/api/Features;Landroid/app/Application;Lteam/opay/core/api/SessionRepository;)V

    return-object v1

    .line 70
    :pswitch_43
    new-instance v1, Lteam/opay/pay/payment/verification/OtpVerificationViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->T:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/pay/payment/PaymentRepository;

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->x0:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/pay/cashier/CashierRepository;

    invoke-direct {v1, v2, v3}, Lteam/opay/pay/payment/verification/OtpVerificationViewModel;-><init>(Lteam/opay/pay/payment/PaymentRepository;Lteam/opay/pay/cashier/CashierRepository;)V

    return-object v1

    .line 71
    :pswitch_44
    new-instance v1, Lteam/opay/pay/account/otp/OtpFetcher;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->z:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/pay/account/otp/OtpFetchRepository;

    invoke-direct {v1, v2, v3}, Lteam/opay/pay/account/otp/OtpFetcher;-><init>(Landroid/app/Application;Lteam/opay/pay/account/otp/OtpFetchRepository;)V

    return-object v1

    .line 72
    :pswitch_45
    new-instance v1, Lteam/opay/pay/coupon/OpayVoucherViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->C0:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/pay/coupon/ObtainCouponRepository;

    invoke-direct {v1, v2, v3}, Lteam/opay/pay/coupon/OpayVoucherViewModel;-><init>(Landroid/app/Application;Lteam/opay/pay/coupon/ObtainCouponRepository;)V

    return-object v1

    .line 73
    :pswitch_46
    new-instance v1, Lteam/opay/pay/home/security/OpaySystemNotificationsViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lteam/opay/pay/home/security/OpaySystemNotificationsViewModel;-><init>(Landroid/app/Application;)V

    return-object v1

    .line 74
    :pswitch_47
    new-instance v1, Lteam/opay/pay/ad/OpayAdBannerViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->D0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/pay/ad/OpayAdBannerRepository;

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v3}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v3

    invoke-static {v3}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lteam/opay/pay/ad/OpayAdBannerViewModel;-><init>(Lteam/opay/pay/ad/OpayAdBannerRepository;Landroid/app/Application;)V

    return-object v1

    .line 75
    :pswitch_48
    new-instance v1, Lteam/opay/pay/onboarding/OnboardingViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->H:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/account/AccountRepository;

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->A:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/auth/AuthRepository;

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v4}, Lteam/opay/pay/android/a$n;->h()Lteam/opay/pay/onboarding/AccountStepRepository;

    move-result-object v4

    iget-object v5, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v5}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v5

    invoke-static {v5}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lteam/opay/pay/onboarding/OnboardingViewModel;-><init>(Lteam/opay/core/account/AccountRepository;Lteam/opay/core/auth/AuthRepository;Lteam/opay/pay/onboarding/AccountStepRepository;Landroid/app/Application;)V

    return-object v1

    .line 76
    :pswitch_49
    new-instance v1, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->p0:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/pay/kyc/levels/KycLevelDao;

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v4, v4, Lteam/opay/pay/android/a$j;->q0:Lm3c;

    invoke-interface {v4}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lteam/opay/pay/home/pay/ServicesRepository;

    iget-object v5, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v5, v5, Lteam/opay/pay/android/a$j;->H:Lm3c;

    invoke-interface {v5}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lteam/opay/core/account/AccountRepository;

    invoke-direct {v1, v2, v3, v4, v5}, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;-><init>(Landroid/app/Application;Lteam/opay/pay/kyc/levels/KycLevelDao;Lteam/opay/pay/home/pay/ServicesRepository;Lteam/opay/core/account/AccountRepository;)V

    return-object v1

    .line 77
    :pswitch_4a
    new-instance v1, Lteam/opay/pay/coupon/ObtainCouponViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->C0:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/pay/coupon/ObtainCouponRepository;

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v4, v4, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v4}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lteam/opay/core/api/e;

    invoke-direct {v1, v2, v3, v4}, Lteam/opay/pay/coupon/ObtainCouponViewModel;-><init>(Landroid/app/Application;Lteam/opay/pay/coupon/ObtainCouponRepository;Lteam/opay/core/api/e;)V

    return-object v1

    .line 78
    :pswitch_4b
    new-instance v1, Lteam/opay/easemoni/module/loan/viewmodel/OKashRepaymentModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->g0()Lteam/opay/easemoni/module/loan/viewmodel/OKashRepaymentRepository;

    move-result-object v2

    invoke-direct {v1, v2}, Lteam/opay/easemoni/module/loan/viewmodel/OKashRepaymentModel;-><init>(Lteam/opay/easemoni/module/loan/viewmodel/OKashRepaymentRepository;)V

    return-object v1

    .line 79
    :pswitch_4c
    new-instance v1, Lteam/opay/easemoni/module/otpauth/OKashOTPAuthViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->f0()Lteam/opay/easemoni/module/otpauth/OKashOTPAuthRepository;

    move-result-object v2

    invoke-direct {v1, v2}, Lteam/opay/easemoni/module/otpauth/OKashOTPAuthViewModel;-><init>(Lteam/opay/easemoni/module/otpauth/OKashOTPAuthRepository;)V

    return-object v1

    .line 80
    :pswitch_4d
    new-instance v1, Lteam/opay/easemoni/module/loan/viewmodel/OKashMyLoanViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->m:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loan/cash/credit/core/util/thread/AppExecutors;

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v3}, Lteam/opay/pay/android/a$n;->c0()Lteam/opay/easemoni/module/loan/viewmodel/OKashMyLoanRepository;

    move-result-object v3

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v4}, Lteam/opay/pay/android/a$n;->w()Lteam/opay/easemoni/module/loan/viewmodel/EMGetFundsRepository;

    move-result-object v4

    iget-object v5, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v5}, Lteam/opay/pay/android/a$n;->Z()Lteam/opay/easemoni/module/home/OKashHomeRepository;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lteam/opay/easemoni/module/loan/viewmodel/OKashMyLoanViewModel;-><init>(Lcom/loan/cash/credit/core/util/thread/AppExecutors;Lteam/opay/easemoni/module/loan/viewmodel/OKashMyLoanRepository;Lteam/opay/easemoni/module/loan/viewmodel/EMGetFundsRepository;Lteam/opay/easemoni/module/home/OKashHomeRepository;)V

    return-object v1

    .line 81
    :pswitch_4e
    new-instance v1, Lteam/opay/easemoni/module/account/viewmodel/OKashMessageListModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->a0()Lteam/opay/easemoni/module/account/repository/OKashMessageListRepository;

    move-result-object v2

    invoke-direct {v1, v2}, Lteam/opay/easemoni/module/account/viewmodel/OKashMessageListModel;-><init>(Lteam/opay/easemoni/module/account/repository/OKashMessageListRepository;)V

    return-object v1

    .line 82
    :pswitch_4f
    new-instance v1, Lteam/opay/easemoni/module/account/viewmodel/OKashContactUsModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->X()Lteam/opay/easemoni/module/account/repository/OKashContactUsRepository;

    move-result-object v2

    invoke-direct {v1, v2}, Lteam/opay/easemoni/module/account/viewmodel/OKashContactUsModel;-><init>(Lteam/opay/easemoni/module/account/repository/OKashContactUsRepository;)V

    return-object v1

    .line 83
    :pswitch_50
    new-instance v1, Lteam/opay/pay/customerservice/OCustomerServiceViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lteam/opay/pay/customerservice/OCustomerServiceViewModel;-><init>(Landroid/app/Application;)V

    return-object v1

    .line 84
    :pswitch_51
    new-instance v1, Lteam/opay/pay/home/notice/NoticeViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->B0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/pay/home/notice/HomeServicesRepository;

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->F:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/api/Features;

    invoke-direct {v1, v2, v3}, Lteam/opay/pay/home/notice/NoticeViewModel;-><init>(Lteam/opay/pay/home/notice/HomeServicesRepository;Lteam/opay/core/api/Features;)V

    return-object v1

    .line 85
    :pswitch_52
    new-instance v1, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/api/e;

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v3}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v3

    invoke-static {v3}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;-><init>(Lteam/opay/core/api/e;Landroid/app/Application;)V

    return-object v1

    .line 86
    :pswitch_53
    new-instance v1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/api/e;

    invoke-direct {v1, v2, v3}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/api/e;)V

    return-object v1

    .line 87
    :pswitch_54
    new-instance v1, Lteam/opay/pay/settings/NewCardViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->H:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lteam/opay/core/account/AccountRepository;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v6

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lteam/opay/core/api/e;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->L:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->A0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lteam/opay/pay/settings/BankAccountRepository;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$j;->L()Lteam/opay/pay/home/pay/ServicesDao;

    move-result-object v10

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->M:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Laj0;

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lteam/opay/pay/settings/NewCardViewModel;-><init>(Lteam/opay/core/account/AccountRepository;Landroid/app/Application;Lteam/opay/core/api/e;Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;Lteam/opay/pay/settings/BankAccountRepository;Lteam/opay/pay/home/pay/ServicesDao;Laj0;)V

    return-object v1

    .line 88
    :pswitch_55
    new-instance v1, Lteam/opay/pay/wallet/NewAddMoneyViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v3}, Lteam/opay/pay/android/a$j;->L()Lteam/opay/pay/home/pay/ServicesDao;

    move-result-object v3

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v4, v4, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v4}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lteam/opay/core/api/e;

    invoke-direct {v1, v2, v3, v4}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;-><init>(Landroid/app/Application;Lteam/opay/pay/home/pay/ServicesDao;Lteam/opay/core/api/e;)V

    return-object v1

    .line 89
    :pswitch_56
    new-instance v1, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v3}, Lteam/opay/pay/android/a$n;->V()Lteam/opay/pay/payment/bill/NativeBillPaymentRepository;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;-><init>(Landroid/app/Application;Lteam/opay/pay/payment/bill/NativeBillPaymentRepository;)V

    return-object v1

    .line 90
    :pswitch_57
    new-instance v1, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$n;->U()Lteam/opay/qrcode/myqrcode/MyQRCodeRepository;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/api/e;

    invoke-direct {v1, v2, v3}, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;-><init>(Lteam/opay/qrcode/myqrcode/MyQRCodeRepository;Lteam/opay/core/api/e;)V

    return-object v1

    .line 91
    :pswitch_58
    new-instance v1, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->P:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lteam/opay/core/payment/WalletRepository;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->H:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lteam/opay/core/account/AccountRepository;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->x0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lteam/opay/pay/cashier/CashierRepository;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->p0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lteam/opay/pay/kyc/levels/KycLevelDao;

    new-instance v9, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v9}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lteam/opay/core/api/e;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v11

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;-><init>(Lteam/opay/core/payment/WalletRepository;Lteam/opay/core/account/AccountRepository;Lteam/opay/pay/cashier/CashierRepository;Lteam/opay/pay/kyc/levels/KycLevelDao;Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/core/api/e;Landroid/app/Application;)V

    return-object v1

    .line 92
    :pswitch_59
    new-instance v1, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->H:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/account/AccountRepository;

    new-instance v4, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v4}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v5, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v5, v5, Lteam/opay/pay/android/a$j;->C:Lm3c;

    invoke-interface {v5}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lteam/opay/pay/address/AddressDao;

    invoke-direct {v1, v2, v3, v4, v5}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/account/AccountRepository;Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/address/AddressDao;)V

    return-object v1

    .line 93
    :pswitch_5a
    new-instance v1, Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lteam/opay/core/api/e;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v8

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->T:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lteam/opay/pay/payment/PaymentRepository;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$j;->L()Lteam/opay/pay/home/pay/ServicesDao;

    move-result-object v10

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->v0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lteam/opay/pay/cashio/CashIORepository;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->w0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lteam/opay/pay/transfer/MobileTransferRepository;

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;-><init>(Lteam/opay/core/api/e;Landroid/app/Application;Lteam/opay/pay/payment/PaymentRepository;Lteam/opay/pay/home/pay/ServicesDao;Lteam/opay/pay/cashio/CashIORepository;Lteam/opay/pay/transfer/MobileTransferRepository;)V

    return-object v1

    .line 94
    :pswitch_5b
    new-instance v1, Lteam/opay/pay/transfer/MobileTransferShareDataViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lteam/opay/pay/transfer/MobileTransferShareDataViewModel;-><init>(Landroid/app/Application;)V

    return-object v1

    .line 95
    :pswitch_5c
    new-instance v1, Lcom/loan/cash/credit/business/ui/merchant/MerchantLoanViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->t0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La79;

    invoke-direct {v1, v2}, Lcom/loan/cash/credit/business/ui/merchant/MerchantLoanViewModel;-><init>(La79;)V

    return-object v1

    .line 96
    :pswitch_5d
    new-instance v1, Lcom/opay/team/newhome/viewmodel/MeViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v4

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->H:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lteam/opay/core/account/AccountRepository;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->P:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lteam/opay/core/payment/WalletRepository;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lteam/opay/core/api/e;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->F:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lteam/opay/core/api/Features;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->E:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lfv;

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/opay/team/newhome/viewmodel/MeViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/account/AccountRepository;Lteam/opay/core/payment/WalletRepository;Lteam/opay/core/api/e;Lteam/opay/core/api/Features;Lfv;)V

    return-object v1

    .line 97
    :pswitch_5e
    new-instance v1, Lteam/opay/pay/reward/marketing/MarketingViewModel;

    invoke-direct {v1}, Lteam/opay/pay/reward/marketing/MarketingViewModel;-><init>()V

    return-object v1

    .line 98
    :pswitch_5f
    new-instance v1, Lteam/opay/pay/settings/MarketingContentViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->s0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/pay/settings/MarketingContentRepository;

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v3}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v3

    invoke-static {v3}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lteam/opay/pay/settings/MarketingContentViewModel;-><init>(Lteam/opay/pay/settings/MarketingContentRepository;Landroid/app/Application;)V

    return-object v1

    .line 99
    :pswitch_60
    iget-object v1, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lt30;->a(Landroid/app/Application;)Lcom/opay/team/home/HomeSettingsStorage;

    move-result-object v1

    return-object v1

    .line 100
    :pswitch_61
    iget-object v1, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->t:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/pay/database/AppDatabase;

    iget-object v4, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v4, v4, Lteam/opay/pay/android/a$j;->n:Lm3c;

    invoke-interface {v4}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lteam/opay/core/settings/SettingsStorage;

    iget-object v5, v0, Lteam/opay/pay/android/a$n$a;->c:Lteam/opay/pay/android/a$n;

    iget-object v5, v5, Lteam/opay/pay/android/a$n;->c1:Lm3c;

    invoke-interface {v5}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/opay/team/home/HomeSettingsStorage;

    iget-object v6, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v6, v6, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v6}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lteam/opay/core/api/e;

    invoke-static {v2, v3, v4, v5, v6}, Lfs8;->a(Landroid/app/Application;Lteam/opay/pay/database/AppDatabase;Lteam/opay/core/settings/SettingsStorage;Lcom/opay/team/home/HomeSettingsStorage;Lteam/opay/core/api/e;)Lteam/opay/pay/home/MainViewModel;

    move-result-object v2

    invoke-static {v1, v2}, Lteam/opay/pay/android/a$n;->e(Lteam/opay/pay/android/a$n;Lteam/opay/pay/home/MainViewModel;)Lteam/opay/pay/home/MainViewModel;

    move-result-object v1

    return-object v1

    .line 101
    :pswitch_62
    new-instance v1, Lteam/opay/pay/payment/data/LifeMarketingViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/core/api/e;

    iget-object v3, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->r0:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/pay/payment/TopupRepository;

    invoke-direct {v1, v2, v3}, Lteam/opay/pay/payment/data/LifeMarketingViewModel;-><init>(Lteam/opay/core/api/e;Lteam/opay/pay/payment/TopupRepository;)V

    return-object v1

    .line 102
    :pswitch_63
    new-instance v1, Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    iget-object v2, v0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;-><init>(Landroid/app/Application;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lteam/opay/pay/android/a$n$a;->d:I

    .line 2
    .line 3
    const/16 v1, 0xc8

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lteam/opay/pay/account/otp/WhatsappOtpFetcher;

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/pay/android/a$n$a;->a:Lteam/opay/pay/android/a$j;

    .line 10
    .line 11
    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Lteam/opay/pay/account/otp/WhatsappOtpFetcher;-><init>(Landroid/app/Application;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 24
    .line 25
    iget v1, p0, Lteam/opay/pay/android/a$n$a;->d:I

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lteam/opay/pay/android/a$n$a;->d:I

    .line 2
    .line 3
    div-int/lit8 v0, v0, 0x64

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/android/a$n$a;->c()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 19
    .line 20
    iget v1, p0, Lteam/opay/pay/android/a$n$a;->d:I

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/android/a$n$a;->b()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/android/a$n$a;->a()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
