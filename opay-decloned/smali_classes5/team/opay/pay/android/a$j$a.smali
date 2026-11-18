.class public final Lteam/opay/pay/android/a$j$a;
.super Ljava/lang/Object;
.source "DaggerNewOpayApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Lm3c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/android/a$j;
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

.field public final b:I


# direct methods
.method public constructor <init>(Lteam/opay/pay/android/a$j;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    .line 5
    .line 6
    iput p2, p0, Lteam/opay/pay/android/a$j$a;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lteam/opay/pay/android/a$j$a;->b:I

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Lteam/opay/pay/android/a$j$a;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 3
    :pswitch_0
    sget-object v0, Lx10;->a:Lx10;

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->t:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/pay/database/AppDatabase;

    invoke-virtual {v0, v1}, Lx10;->m0(Lteam/opay/pay/database/AppDatabase;)Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;

    move-result-object v0

    return-object v0

    .line 4
    :pswitch_1
    new-instance v0, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v0}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->V0:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;

    iget-object v2, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->E:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfv;

    invoke-static {v0, v1, v2}, Lt40;->a(Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;Lfv;)Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;

    move-result-object v0

    return-object v0

    .line 5
    :pswitch_2
    invoke-static {}, Lteam/opay/business/chat/api/AppModule_ProvideApiServiceFactory;->b()Lwv;

    move-result-object v0

    return-object v0

    .line 6
    :pswitch_3
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v0, v0, Lteam/opay/pay/android/a$j;->E:Lm3c;

    invoke-interface {v0}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfv;

    invoke-static {v0}, Lr40;->a(Lfv;)Lteam/opay/pay/transaction/TransactionWebService;

    move-result-object v0

    return-object v0

    .line 7
    :pswitch_4
    new-instance v0, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v0}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->S0:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/pay/transaction/TransactionWebService;

    invoke-static {v0, v1}, Lq40;->a(Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/transaction/TransactionWebService;)Lteam/opay/pay/transaction/TransactionRepository;

    move-result-object v0

    return-object v0

    .line 8
    :pswitch_5
    invoke-static {}, Lteam/opay/sme/store/api/AppModule_ProvideApiServiceFactory;->b()Llv;

    move-result-object v0

    return-object v0

    .line 9
    :pswitch_6
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lm30;->a(Landroid/app/Application;)Lpj2;

    move-result-object v0

    return-object v0

    .line 10
    :pswitch_7
    new-instance v0, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v0}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->P0:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpj2;

    iget-object v2, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->E:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfv;

    invoke-static {v0, v1, v2}, Ll30;->a(Lteam/opay/core/android/arch/AppExecutors;Lpj2;Lfv;)Lteam/opay/pay/common/CommonRepository;

    move-result-object v0

    return-object v0

    .line 11
    :pswitch_8
    new-instance v0, Lteam/opay/pay/cashier/result/ShareShortUrlRepository;

    new-instance v1, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v1}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v2, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->E:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfv;

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/result/ShareShortUrlRepository;-><init>(Lteam/opay/core/android/arch/AppExecutors;Lfv;)V

    return-object v0

    .line 12
    :pswitch_9
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v1}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v2, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$j;->S()Lteam/opay/pay/transfer/contact/TransferContactDao;

    move-result-object v2

    iget-object v3, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v3}, Lteam/opay/pay/android/a$j;->l()Lteam/opay/pay/transfer/a;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Ls40;->a(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/transfer/contact/TransferContactDao;Lteam/opay/pay/transfer/a;)Lteam/opay/pay/transfer/contact/TransferContactRepository;

    move-result-object v0

    return-object v0

    .line 13
    :pswitch_a
    new-instance v0, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v0}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->E:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfv;

    invoke-static {v0, v1}, Lf40;->a(Lteam/opay/core/android/arch/AppExecutors;Lfv;)Lteam/opay/pay/home/security/SecretSecurityPasswordRepository;

    move-result-object v0

    return-object v0

    .line 14
    :pswitch_b
    sget-object v0, Lx10;->a:Lx10;

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->t:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/pay/database/AppDatabase;

    invoke-virtual {v0, v1}, Lx10;->K(Lteam/opay/pay/database/AppDatabase;)Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;

    move-result-object v0

    return-object v0

    .line 15
    :pswitch_c
    new-instance v0, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v0}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->E:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfv;

    invoke-static {v0, v1}, Lv40;->a(Lteam/opay/core/android/arch/AppExecutors;Lfv;)Lteam/opay/pay/history/UserTransactionsDetailRepository;

    move-result-object v0

    return-object v0

    .line 16
    :pswitch_d
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v1}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    invoke-static {v0, v1}, Ln20;->a(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;)Lteam/opay/pay/onboarding/register/RegisterRepository;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_e
    invoke-static {}, Lteam/opay/sme/va/hilt/AppModule_ProvideApiServiceFactory;->b()Lmv;

    move-result-object v0

    return-object v0

    .line 18
    :pswitch_f
    invoke-static {}, Lteam/opay/opb/qrcode/hilt/AppModule_ProvideApiServiceFactory;->b()Lbv;

    move-result-object v0

    return-object v0

    .line 19
    :pswitch_10
    invoke-static {}, Lteam/opay/business/pin/hilt/AppModule_ProvideApiServiceFactory;->b()Ltv;

    move-result-object v0

    return-object v0

    .line 20
    :pswitch_11
    new-instance v0, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v0}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$j;->D()Lzw5;

    move-result-object v1

    invoke-static {v0, v1}, Lq30;->a(Lteam/opay/core/android/arch/AppExecutors;Lzw5;)Lteam/opay/pay/favorites/FavoritesRepository;

    move-result-object v0

    return-object v0

    .line 21
    :pswitch_12
    invoke-static {}, Lteam/opay/business/payroll/hilt/AppModule_ProvideApiServiceFactory;->b()Lrv;

    move-result-object v0

    return-object v0

    .line 22
    :pswitch_13
    new-instance v0, Lteam/opay/pay/ad/OpayAdBannerRepository;

    new-instance v1, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v1}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v2, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/ad/OpayAdBannerRepository;-><init>(Lteam/opay/core/android/arch/AppExecutors;Landroid/app/Application;)V

    return-object v0

    .line 23
    :pswitch_14
    new-instance v0, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v0}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->E:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfv;

    invoke-static {v0, v1}, La40;->a(Lteam/opay/core/android/arch/AppExecutors;Lfv;)Lteam/opay/pay/coupon/ObtainCouponRepository;

    move-result-object v0

    return-object v0

    .line 24
    :pswitch_15
    new-instance v0, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v0}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->E:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfv;

    invoke-static {v0, v1}, Ly30;->a(Lteam/opay/core/android/arch/AppExecutors;Lfv;)Lteam/opay/pay/home/notice/HomeServicesRepository;

    move-result-object v0

    return-object v0

    .line 25
    :pswitch_16
    sget-object v0, Lx10;->a:Lx10;

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->t:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/pay/database/AppDatabase;

    invoke-virtual {v0, v1}, Lx10;->q(Lteam/opay/pay/database/AppDatabase;)Lteam/opay/pay/settings/BankAccountsDao;

    move-result-object v0

    return-object v0

    .line 26
    :pswitch_17
    new-instance v0, Lteam/opay/pay/settings/BankAccountRepository;

    new-instance v1, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v1}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v2, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->E:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfv;

    iget-object v3, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->z0:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/pay/settings/BankAccountsDao;

    invoke-direct {v0, v1, v2, v3}, Lteam/opay/pay/settings/BankAccountRepository;-><init>(Lteam/opay/core/android/arch/AppExecutors;Lfv;Lteam/opay/pay/settings/BankAccountsDao;)V

    return-object v0

    .line 27
    :pswitch_18
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->k(Lteam/opay/pay/android/a$j;)Lteam/opay/qrcode/QRCodeServiceModule;

    move-result-object v0

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-static {v0, v1}, Lf9c;->a(Lteam/opay/qrcode/QRCodeServiceModule;Landroid/app/Application;)Lj9c;

    move-result-object v0

    return-object v0

    .line 28
    :pswitch_19
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v1}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    invoke-static {v0, v1}, Lk30;->a(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;)Lteam/opay/pay/cashier/CashierRepository;

    move-result-object v0

    return-object v0

    .line 29
    :pswitch_1a
    new-instance v0, Lteam/opay/pay/transfer/MobileTransferRepository;

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    new-instance v2, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v2}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/transfer/MobileTransferRepository;-><init>(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;)V

    return-object v0

    .line 30
    :pswitch_1b
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->E:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfv;

    invoke-static {v0, v1}, Lj30;->a(Landroid/app/Application;Lfv;)Lb32;

    move-result-object v0

    return-object v0

    .line 31
    :pswitch_1c
    new-instance v0, Lteam/opay/pay/cashio/CashIORepository;

    new-instance v1, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v1}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v2, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->u0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb32;

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashio/CashIORepository;-><init>(Lteam/opay/core/android/arch/AppExecutors;Lb32;)V

    return-object v0

    .line 32
    :pswitch_1d
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lam9;->a(Landroid/app/Application;)La79;

    move-result-object v0

    return-object v0

    .line 33
    :pswitch_1e
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v1}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    invoke-static {v0, v1}, Lw30;->a(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;)Lteam/opay/pay/settings/MarketingContentRepository;

    move-result-object v0

    return-object v0

    .line 34
    :pswitch_1f
    new-instance v0, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v0}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->E:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfv;

    iget-object v2, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$j;->F()Lteam/opay/pay/wallet/HotBanksPackageDao;

    move-result-object v2

    iget-object v3, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v3}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v3

    invoke-static {v3}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lp40;->a(Lteam/opay/core/android/arch/AppExecutors;Lfv;Lteam/opay/pay/wallet/HotBanksPackageDao;Landroid/app/Application;)Lteam/opay/pay/payment/TopupRepository;

    move-result-object v0

    return-object v0

    .line 35
    :pswitch_20
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v1}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v2, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->p0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/pay/kyc/levels/KycLevelDao;

    invoke-static {v0, v1, v2}, Li40;->a(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/kyc/levels/KycLevelDao;)Lteam/opay/pay/home/pay/ServicesRepository;

    move-result-object v0

    return-object v0

    .line 36
    :pswitch_21
    sget-object v0, Lx10;->a:Lx10;

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->t:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/pay/database/AppDatabase;

    invoke-virtual {v0, v1}, Lx10;->P(Lteam/opay/pay/database/AppDatabase;)Lteam/opay/pay/kyc/levels/KycLevelDao;

    move-result-object v0

    return-object v0

    .line 37
    :pswitch_22
    new-instance v0, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v0}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->E:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfv;

    invoke-static {v0, v1, v2}, Ls30;->a(Lteam/opay/core/android/arch/AppExecutors;Landroid/app/Application;Lfv;)Lteam/opay/pay/home/config/HomeConfigRepository;

    move-result-object v0

    return-object v0

    .line 38
    :pswitch_23
    invoke-static {}, Lteam/opay/opb/qrcode/hms/business/hilt/AppModule_ProvideApiServiceFactory;->b()Lcv;

    move-result-object v0

    return-object v0

    .line 39
    :pswitch_24
    invoke-static {}, Lteam/opay/business/csc/hilt/AppModule_ProvideApiServiceFactory;->b()Liv;

    move-result-object v0

    return-object v0

    .line 40
    :pswitch_25
    new-instance v0, Lteam/opay/pay/home/security/closeaccount/CloseAccountRepository;

    new-instance v1, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v1}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v2, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/home/security/closeaccount/CloseAccountRepository;-><init>(Lteam/opay/core/android/arch/AppExecutors;Landroid/app/Application;)V

    return-object v0

    .line 41
    :pswitch_26
    new-instance v0, Lteam/opay/pay/account/ChangeMobileRepository;

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    new-instance v2, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v2}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/ChangeMobileRepository;-><init>(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;)V

    return-object v0

    .line 42
    :pswitch_27
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Li30;->a(Landroid/app/Application;)Ls22;

    move-result-object v0

    return-object v0

    .line 43
    :pswitch_28
    invoke-static {}, Lteam/opay/business/transfer/flow/hilt/AppModule_ProvideApiServiceFactory;->b()Lyu;

    move-result-object v0

    return-object v0

    .line 44
    :pswitch_29
    new-instance v0, Lteam/opay/pay/account/verify/VerifyRepository;

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    new-instance v2, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v2}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/VerifyRepository;-><init>(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;)V

    return-object v0

    .line 45
    :pswitch_2a
    new-instance v0, Lteam/opay/core/card/CardDataRepository;

    new-instance v1, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v1}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    invoke-direct {v0, v1}, Lteam/opay/core/card/CardDataRepository;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    return-object v0

    .line 46
    :pswitch_2b
    new-instance v0, Lteam/opay/pay/biometric/BiometricRepository;

    new-instance v1, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v1}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v2, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/biometric/BiometricRepository;-><init>(Lteam/opay/core/android/arch/AppExecutors;Landroid/app/Application;)V

    return-object v0

    .line 47
    :pswitch_2c
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lg40;->a(Landroid/app/Application;)Ln8d;

    move-result-object v0

    return-object v0

    .line 48
    :pswitch_2d
    new-instance v0, Lteam/opay/pay/home/security/SecretSecurityRepository;

    new-instance v1, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v1}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v2, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->d0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln8d;

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/home/security/SecretSecurityRepository;-><init>(Lteam/opay/core/android/arch/AppExecutors;Ln8d;)V

    return-object v0

    .line 49
    :pswitch_2e
    new-instance v0, Lteam/opay/pay/history/download/BillDownloadRepository;

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    new-instance v2, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v2}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/history/download/BillDownloadRepository;-><init>(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;)V

    return-object v0

    .line 50
    :pswitch_2f
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lf30;->a(Landroid/app/Application;)Lb41;

    move-result-object v0

    return-object v0

    .line 51
    :pswitch_30
    new-instance v0, Lteam/opay/pay/payment/betting/BettingRepository;

    new-instance v1, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v1}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v2, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->a0:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb41;

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/payment/betting/BettingRepository;-><init>(Lteam/opay/core/android/arch/AppExecutors;Lb41;)V

    return-object v0

    .line 52
    :pswitch_31
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lv20;->a(Landroid/app/Application;)Lxt;

    move-result-object v0

    return-object v0

    .line 53
    :pswitch_32
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lv50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lp30;->a(Landroid/content/Context;)Lteam/opay/opb/transfer/bank/room/AppDatabase;

    move-result-object v0

    return-object v0

    .line 54
    :pswitch_33
    invoke-static {}, Lteam/opay/opb/transfer/bank/hilt/AppModule_ProvideApiServiceFactory;->b()Ldv;

    move-result-object v0

    return-object v0

    .line 55
    :pswitch_34
    new-instance v0, Lteam/opay/pay/home/tabs/ac/BankTransferRepository;

    new-instance v1, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v1}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v2, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v2}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->E:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfv;

    invoke-direct {v0, v1, v2, v3}, Lteam/opay/pay/home/tabs/ac/BankTransferRepository;-><init>(Lteam/opay/core/android/arch/AppExecutors;Landroid/app/Application;Lfv;)V

    return-object v0

    .line 56
    :pswitch_35
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->E:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfv;

    invoke-static {v0, v1}, Ld30;->a(Landroid/app/Application;Lfv;)Lxl0;

    move-result-object v0

    return-object v0

    .line 57
    :pswitch_36
    new-instance v0, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v0}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->U:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxl0;

    iget-object v2, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$j;->v()Lteam/opay/pay/bank/BanksDao;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc30;->a(Lteam/opay/core/android/arch/AppExecutors;Lxl0;Lteam/opay/pay/bank/BanksDao;)Lteam/opay/pay/bank/BankRepository;

    move-result-object v0

    return-object v0

    .line 58
    :pswitch_37
    new-instance v0, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v0}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$j;->C()Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ld40;->a(Lteam/opay/core/android/arch/AppExecutors;Landroid/app/Application;Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao;)Lteam/opay/pay/payment/PaymentRepository;

    move-result-object v0

    return-object v0

    .line 59
    :pswitch_38
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v0, v0, Lteam/opay/pay/android/a$j;->E:Lm3c;

    invoke-interface {v0}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfv;

    invoke-static {v0}, La30;->a(Lfv;)Lteam/opay/pay/history/balance/BalanceHistoryWebService;

    move-result-object v0

    return-object v0

    .line 60
    :pswitch_39
    new-instance v0, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v0}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->R:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/pay/history/balance/BalanceHistoryWebService;

    invoke-static {v0, v1}, Lz20;->a(Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/history/balance/BalanceHistoryWebService;)Lteam/opay/pay/history/balance/BalanceHistoryRepository;

    move-result-object v0

    return-object v0

    .line 61
    :pswitch_3a
    new-instance v0, Lteam/opay/pay/cashier/newpayment/PaymentOWealthRepository;

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/pay/cashier/newpayment/PaymentOWealthRepository;-><init>(Landroid/app/Application;)V

    return-object v0

    .line 62
    :pswitch_3b
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ly40;->a(Landroid/app/Application;)Lc5g;

    move-result-object v0

    return-object v0

    .line 63
    :pswitch_3c
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v1}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v2, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->O:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc5g;

    iget-object v3, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v3, v3, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v3}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/core/api/e;

    invoke-static {v0, v1, v2, v3}, Lx40;->a(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;Lc5g;Lteam/opay/core/api/e;)Lteam/opay/core/payment/WalletRepository;

    move-result-object v0

    return-object v0

    .line 64
    :pswitch_3d
    new-instance v0, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v0}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v1}, Lteam/opay/pay/android/a$j;->x()Lkm1;

    move-result-object v1

    invoke-static {v0, v1}, Lh30;->a(Lteam/opay/core/android/arch/AppExecutors;Lkm1;)Lteam/opay/pay/kyc/bvn/BvnRepository;

    move-result-object v0

    return-object v0

    .line 65
    :pswitch_3e
    new-instance v0, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v0}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    invoke-static {v0}, Lb30;->a(Lteam/opay/core/android/arch/AppExecutors;)Laj0;

    move-result-object v0

    return-object v0

    .line 66
    :pswitch_3f
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lc40;->a(Landroid/app/Application;)Lteam/opay/core/api/d;

    move-result-object v0

    return-object v0

    .line 67
    :pswitch_40
    new-instance v0, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v0}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->K:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/core/api/d;

    invoke-static {v0, v1}, Lb40;->a(Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/core/api/d;)Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;

    move-result-object v0

    return-object v0

    .line 68
    :pswitch_41
    invoke-static {}, Lteam/opay/business/provider/api/AppModule_ProvideApiServiceFactory;->b()Luv;

    move-result-object v0

    return-object v0

    .line 69
    :pswitch_42
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lw40;->a(Landroid/app/Application;)Lknf;

    move-result-object v0

    return-object v0

    .line 70
    :pswitch_43
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->s:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/core/api/e;

    invoke-static {v0, v1}, Lr30;->a(Landroid/app/Application;Lteam/opay/core/api/e;)Lteam/opay/core/api/Features;

    move-result-object v0

    return-object v0

    .line 71
    :pswitch_44
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->F:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/core/api/Features;

    invoke-static {v0, v1}, Lr20;->a(Landroid/app/Application;Lteam/opay/core/api/Features;)Lfd;

    move-result-object v0

    return-object v0

    .line 72
    :pswitch_45
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v1}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v2, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->G:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfd;

    invoke-static {v0, v1, v2}, Lq20;->a(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;Lfd;)Lteam/opay/core/account/AccountRepository;

    move-result-object v0

    return-object v0

    .line 73
    :pswitch_46
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lw20;->a(Landroid/app/Application;)Lfv;

    move-result-object v0

    return-object v0

    .line 74
    :pswitch_47
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v1}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    invoke-static {v0, v1}, Lu30;->a(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;)Lcom/opay/team/newhome/viewmodel/AccountNewRepository;

    move-result-object v0

    return-object v0

    .line 75
    :pswitch_48
    sget-object v0, Lx10;->a:Lx10;

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->t:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/pay/database/AppDatabase;

    invoke-virtual {v0, v1}, Lx10;->h(Lteam/opay/pay/database/AppDatabase;)Lteam/opay/pay/address/AddressDao;

    move-result-object v0

    return-object v0

    .line 76
    :pswitch_49
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v1}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    invoke-static {v0, v1}, Lx30;->a(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;)Lteam/opay/pay/kyc/base/KycSceneRepository;

    move-result-object v0

    return-object v0

    .line 77
    :pswitch_4a
    new-instance v0, Lteam/opay/core/auth/AuthRepository;

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    new-instance v2, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v2}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v3, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v3}, Lteam/opay/pay/android/a$j;->s()Lteam/opay/core/auth/AuthDataDao;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lteam/opay/core/auth/AuthRepository;-><init>(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/core/auth/AuthDataDao;)V

    return-object v0

    .line 78
    :pswitch_4b
    new-instance v0, Lteam/opay/pay/account/otp/OtpFetchRepository;

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    new-instance v2, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v2}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/otp/OtpFetchRepository;-><init>(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;)V

    return-object v0

    .line 79
    :pswitch_4c
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v1}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    invoke-static {v0, v1}, Lv30;->a(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;)Lteam/opay/pay/kyc/customer/KycRepository;

    move-result-object v0

    return-object v0

    .line 80
    :pswitch_4d
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lz30;->a(Landroid/app/Application;)Lu45;

    move-result-object v0

    return-object v0

    .line 81
    :pswitch_4e
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lx20;->a(Landroid/app/Application;)Lteam/opay/pay/android/AppLock;

    move-result-object v0

    return-object v0

    .line 82
    :pswitch_4f
    sget-object v0, Lx10;->a:Lx10;

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v1}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx10;->F(Landroid/app/Application;)Lteam/opay/pay/database/AppDatabase;

    move-result-object v0

    return-object v0

    .line 83
    :pswitch_50
    sget-object v0, Lx10;->a:Lx10;

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->t:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/pay/database/AppDatabase;

    invoke-virtual {v0, v1}, Lx10;->f(Lteam/opay/pay/database/AppDatabase;)Lxh;

    move-result-object v0

    return-object v0

    .line 84
    :pswitch_51
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->u:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxh;

    invoke-static {v0, v1}, Lu20;->a(Landroid/app/Application;Lxh;)Lteam/opay/pay/ad/AdReachHelp;

    move-result-object v0

    return-object v0

    .line 85
    :pswitch_52
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ll40;->a(Landroid/app/Application;)Lwhd;

    move-result-object v0

    return-object v0

    .line 86
    :pswitch_53
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v1}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v2, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->q:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwhd;

    invoke-static {v0, v1, v2}, Lk40;->a(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;Lwhd;)Lteam/opay/core/api/SessionRepository;

    move-result-object v0

    return-object v0

    .line 87
    :pswitch_54
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v0, v0, Lteam/opay/pay/android/a$j;->r:Lm3c;

    invoke-interface {v0}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/core/api/SessionRepository;

    invoke-static {v0}, Lj40;->a(Lteam/opay/core/api/SessionRepository;)Lteam/opay/core/api/e;

    move-result-object v0

    return-object v0

    .line 88
    :pswitch_55
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->n:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/core/settings/SettingsStorage;

    invoke-static {v0, v1}, Lg30;->a(Landroid/app/Application;Lteam/opay/core/settings/SettingsStorage;)Lteam/opay/pay/biometric/BiometricIntroduction;

    move-result-object v0

    return-object v0

    .line 89
    :pswitch_56
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ly20;->a(Landroid/app/Application;)Lp60;

    move-result-object v0

    return-object v0

    .line 90
    :pswitch_57
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lm40;->a(Landroid/app/Application;)Lteam/opay/core/settings/SettingsStorage;

    move-result-object v0

    return-object v0

    .line 91
    :pswitch_58
    new-instance v0, Lcom/loan/cash/credit/core/util/thread/AppExecutors;

    invoke-direct {v0}, Lcom/loan/cash/credit/core/util/thread/AppExecutors;-><init>()V

    return-object v0

    .line 92
    :pswitch_59
    invoke-static {}, Lteam/opay/spos/printer/hilt/AppModule_ProvideApiServiceFactory;->b()Lov;

    move-result-object v0

    return-object v0

    .line 93
    :pswitch_5a
    invoke-static {}, Lteam/opay/spos/base/hilt/AppModule_ProvideApiServiceFactory;->b()Lnv;

    move-result-object v0

    return-object v0

    .line 94
    :pswitch_5b
    new-instance v0, Lteam/opay/core/api/UserPropertiesRepository;

    new-instance v1, Lteam/opay/core/android/arch/AppExecutors;

    invoke-direct {v1}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    iget-object v2, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-virtual {v2}, Lteam/opay/pay/android/a$j;->E()Lteam/opay/core/api/GraphQLUserPropertiesWebService;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/UserPropertiesRepository;-><init>(Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/core/api/GraphQLUserPropertiesWebService;)V

    return-object v0

    .line 95
    :pswitch_5c
    iget-object v0, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    invoke-static {v0}, Lteam/opay/pay/android/a$j;->j(Lteam/opay/pay/android/a$j;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Lu50;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v1, v1, Lteam/opay/pay/android/a$j;->i:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/core/api/UserPropertiesRepository;

    invoke-static {v0, v1}, Lz40;->a(Landroid/app/Application;Lteam/opay/core/api/UserPropertiesRepository;)Lteam/opay/pay/analytics/AnalyticsBackend;

    move-result-object v0

    return-object v0

    .line 96
    :pswitch_5d
    invoke-static {}, Lteam/opay/business/share/hilt/AppModule_ProvideApiServiceFactory;->b()Lxu;

    move-result-object v0

    return-object v0

    .line 97
    :pswitch_5e
    invoke-static {}, Lteam/opay/business/picture/hilt/AppModule_ProvideApiServiceFactory;->b()Lsv;

    move-result-object v0

    return-object v0

    .line 98
    :pswitch_5f
    invoke-static {}, Lteam/opay/business/js/hilt/AppModule_ProvideApiServiceFactory;->b()Lqv;

    move-result-object v0

    return-object v0

    .line 99
    :pswitch_60
    invoke-static {}, Lteam/opay/business/core/hilt/AppModule_ProvideApiServiceFactory;->b()Lhv;

    move-result-object v0

    return-object v0

    .line 100
    :pswitch_61
    new-instance v0, Lteam/opay/business/core/BusinessRepository;

    new-instance v1, Lteam/opay/core/http/arch/AppExecutors;

    invoke-direct {v1}, Lteam/opay/core/http/arch/AppExecutors;-><init>()V

    iget-object v2, p0, Lteam/opay/pay/android/a$j$a;->a:Lteam/opay/pay/android/a$j;

    iget-object v2, v2, Lteam/opay/pay/android/a$j;->d:Lm3c;

    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhv;

    invoke-direct {v0, v1, v2}, Lteam/opay/business/core/BusinessRepository;-><init>(Lteam/opay/core/http/arch/AppExecutors;Lhv;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
