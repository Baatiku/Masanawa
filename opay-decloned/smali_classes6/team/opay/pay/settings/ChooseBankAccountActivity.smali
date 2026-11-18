.class public final Lteam/opay/pay/settings/ChooseBankAccountActivity;
.super Lteam/opay/pay/settings/Hilt_ChooseBankAccountActivity;
.source "ChooseBankAccountActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/settings/ChooseBankAccountActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 %2\u00020\u0001:\u0001&B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u0019\u0010\t\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0014\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0019\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0011\u001a\u0004\u0008\u0017\u0010\u0018R+\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\u001aj\u0008\u0012\u0004\u0012\u00020\u000b`\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0011\u001a\u0004\u0008\u001d\u0010\u001eR\u001b\u0010$\u001a\u00020 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u0011\u001a\u0004\u0008\"\u0010#\u00a8\u0006\'"
    }
    d2 = {
        "Lteam/opay/pay/settings/ChooseBankAccountActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "",
        "O",
        "S",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Lteam/opay/pay/settings/BankAccountInfo;",
        "bankAccountInfo",
        "N",
        "(Lteam/opay/pay/settings/BankAccountInfo;)V",
        "Lje;",
        "e",
        "Lid8;",
        "L",
        "()Lje;",
        "viewBinding",
        "Lteam/opay/pay/settings/NewCardViewModel;",
        "f",
        "M",
        "()Lteam/opay/pay/settings/NewCardViewModel;",
        "viewModel",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "g",
        "K",
        "()Ljava/util/ArrayList;",
        "mBankAccountList",
        "Lteam/opay/pay/settings/ChooseBankAdapter;",
        "h",
        "J",
        "()Lteam/opay/pay/settings/ChooseBankAdapter;",
        "mAdapter",
        "i",
        "Companion",
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


# static fields
.field public static final i:Lteam/opay/pay/settings/ChooseBankAccountActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/settings/ChooseBankAccountActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/settings/ChooseBankAccountActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/settings/ChooseBankAccountActivity;->i:Lteam/opay/pay/settings/ChooseBankAccountActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_choose_account:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/settings/Hilt_ChooseBankAccountActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lob2;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lob2;-><init>(Lteam/opay/pay/settings/ChooseBankAccountActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/settings/ChooseBankAccountActivity;->e:Lid8;

    .line 16
    .line 17
    new-instance v0, Lteam/opay/pay/settings/ChooseBankAccountActivity$special$$inlined$viewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 23
    .line 24
    const-class v2, Lteam/opay/pay/settings/NewCardViewModel;

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lteam/opay/pay/settings/ChooseBankAccountActivity$special$$inlined$viewModels$default$2;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lteam/opay/pay/settings/ChooseBankAccountActivity$special$$inlined$viewModels$default$3;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lteam/opay/pay/settings/ChooseBankAccountActivity;->f:Lid8;

    .line 45
    .line 46
    new-instance v0, Lpb2;

    .line 47
    .line 48
    invoke-direct {v0}, Lpb2;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lteam/opay/pay/settings/ChooseBankAccountActivity;->g:Lid8;

    .line 56
    .line 57
    new-instance v0, Lqb2;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Lqb2;-><init>(Lteam/opay/pay/settings/ChooseBankAccountActivity;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lteam/opay/pay/settings/ChooseBankAccountActivity;->h:Lid8;

    .line 67
    .line 68
    return-void
.end method

.method public static synthetic A()Ljava/util/ArrayList;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->W()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic B(Lteam/opay/pay/settings/ChooseBankAccountActivity;)Lteam/opay/pay/settings/ChooseBankAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->V(Lteam/opay/pay/settings/ChooseBankAccountActivity;)Lteam/opay/pay/settings/ChooseBankAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/settings/ChooseBankAccountActivity;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->U(Lteam/opay/pay/settings/ChooseBankAccountActivity;Landroid/text/Editable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lteam/opay/pay/settings/ChooseBankAccountActivity;)Lje;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->X(Lteam/opay/pay/settings/ChooseBankAccountActivity;)Lje;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lteam/opay/pay/settings/ChooseBankAccountActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->T(Lteam/opay/pay/settings/ChooseBankAccountActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F(Lteam/opay/pay/settings/ChooseBankAccountActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->P(Lteam/opay/pay/settings/ChooseBankAccountActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lteam/opay/pay/settings/ChooseBankAccountActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->Q(Lteam/opay/pay/settings/ChooseBankAccountActivity;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic H(Lteam/opay/pay/settings/BankAccountInfo;Lteam/opay/pay/settings/BankAccountInfo;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->R(Lteam/opay/pay/settings/BankAccountInfo;Lteam/opay/pay/settings/BankAccountInfo;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic I(Lteam/opay/pay/settings/ChooseBankAccountActivity;Lteam/opay/pay/settings/BankAccountInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->N(Lteam/opay/pay/settings/BankAccountInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final M()Lteam/opay/pay/settings/NewCardViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/ChooseBankAccountActivity;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/settings/NewCardViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final O()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->L()Lje;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lje;->g:Lteam/opay/pay/android/views/SearchView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/android/views/SearchView;->getEdit()Landroidx/appcompat/widget/AppCompatEditText;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget v1, Lteam/opay/pay/R$string;->osdk_search_bank_hint:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->L()Lje;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Lje;->h:Lteam/opay/pay/android/views/SideBar;

    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->L()Lje;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v1, v1, Lje;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lteam/opay/pay/android/views/SideBar;->setMTextDialog(Landroid/widget/TextView;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->L()Lje;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v0, v0, Lje;->h:Lteam/opay/pay/android/views/SideBar;

    .line 36
    .line 37
    new-instance v1, Lrb2;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lrb2;-><init>(Lteam/opay/pay/settings/ChooseBankAccountActivity;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lteam/opay/pay/android/views/SideBar;->setOnTouchingLetterChangedListener(Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->L()Lje;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v0, v0, Lje;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .line 51
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->J()Lteam/opay/pay/settings/ChooseBankAdapter;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->M()Lteam/opay/pay/settings/NewCardViewModel;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lteam/opay/pay/settings/NewCardViewModel;->T()Landroidx/lifecycle/LiveData;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v1, Lsb2;

    .line 67
    .line 68
    invoke-direct {v1, p0}, Lsb2;-><init>(Lteam/opay/pay/settings/ChooseBankAccountActivity;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->S()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public static final P(Lteam/opay/pay/settings/ChooseBankAccountActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "s"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->J()Lteam/opay/pay/settings/ChooseBankAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {v0, p1}, Lteam/opay/pay/settings/ChooseBankAdapter;->getPositionForSection(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v0, -0x1

    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->L()Lje;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v0, v0, Lje;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->L()Lje;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    iget-object p0, p0, Lje;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    .line 42
    .line 43
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 47
    .line 48
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 49
    .line 50
    .line 51
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0
.end method

.method public static final Q(Lteam/opay/pay/settings/ChooseBankAccountActivity;Ljava/util/List;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->K()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lteam/opay/pay/bank/BankAccount;

    .line 26
    .line 27
    new-instance v10, Lteam/opay/pay/settings/BankAccountInfo;

    .line 28
    .line 29
    invoke-virtual {v0}, Lteam/opay/pay/bank/BankAccount;->a()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0}, Lteam/opay/pay/bank/BankAccount;->d()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v0}, Lteam/opay/pay/bank/BankAccount;->e()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v0}, Lteam/opay/pay/bank/BankAccount;->c()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v0}, Lteam/opay/pay/bank/BankAccount;->b()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    const/16 v8, 0x20

    .line 50
    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v7, 0x0

    .line 53
    move-object v1, v10

    .line 54
    invoke-direct/range {v1 .. v9}, Lteam/opay/pay/settings/BankAccountInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lteam/opay/pay/bank/BankAccount;->d()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const-string v2, "#"

    .line 66
    .line 67
    if-lez v1, :cond_1

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    const/4 v3, 0x1

    .line 71
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v1, "substring(...)"

    .line 76
    .line 77
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string v3, "getDefault(...)"

    .line 85
    .line 86
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "toUpperCase(...)"

    .line 94
    .line 95
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    new-instance v4, Lkotlin/text/Regex;

    .line 99
    .line 100
    const-string v5, "[A-Z]"

    .line 101
    .line 102
    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_0

    .line 110
    .line 111
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v10, v0}, Lteam/opay/pay/settings/BankAccountInfo;->e(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_0
    invoke-virtual {v10, v2}, Lteam/opay/pay/settings/BankAccountInfo;->e(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_1
    invoke-virtual {v10, v2}, Lteam/opay/pay/settings/BankAccountInfo;->e(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->K()Ljava/util/ArrayList;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->K()Ljava/util/ArrayList;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    new-instance v0, Lvb2;

    .line 150
    .line 151
    invoke-direct {v0}, Lvb2;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .line 156
    .line 157
    :catch_0
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->J()Lteam/opay/pay/settings/ChooseBankAdapter;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .line 165
    .line 166
    const/4 v1, 0x0

    .line 167
    invoke-virtual {p1, p0, v0, v1}, Lteam/opay/pay/settings/ChooseBankAdapter;->m(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method public static final R(Lteam/opay/pay/settings/BankAccountInfo;Lteam/opay/pay/settings/BankAccountInfo;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/BankAccountInfo;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "#"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/settings/BankAccountInfo;->c()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Lteam/opay/pay/settings/BankAccountInfo;->c()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Lteam/opay/pay/settings/BankAccountInfo;->c()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    const/4 p0, -0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/settings/BankAccountInfo;->c()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p1}, Lteam/opay/pay/settings/BankAccountInfo;->c()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    const/4 p0, 0x0

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/settings/BankAccountInfo;->c()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p1}, Lteam/opay/pay/settings/BankAccountInfo;->c()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    :goto_0
    return p0
.end method

.method private final S()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->L()Lje;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lje;->g:Lteam/opay/pay/android/views/SearchView;

    .line 6
    .line 7
    new-instance v1, Ltb2;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Ltb2;-><init>(Lteam/opay/pay/settings/ChooseBankAccountActivity;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lteam/opay/pay/android/views/SearchView;->setAfterTextChangeListener(Lkotlin/jvm/functions/Function1;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->L()Lje;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lje;->g:Lteam/opay/pay/android/views/SearchView;

    .line 20
    .line 21
    new-instance v1, Lub2;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lub2;-><init>(Lteam/opay/pay/settings/ChooseBankAccountActivity;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lteam/opay/pay/android/views/SearchView;->setOnCancelClickListener(Lkotlin/jvm/functions/Function0;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static final T(Lteam/opay/pay/settings/ChooseBankAccountActivity;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->J()Lteam/opay/pay/settings/ChooseBankAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, p0, v1, v2}, Lteam/opay/pay/settings/ChooseBankAdapter;->m(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final U(Lteam/opay/pay/settings/ChooseBankAccountActivity;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->J()Lteam/opay/pay/settings/ChooseBankAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    invoke-virtual {v0, p0, v1, p1}, Lteam/opay/pay/settings/ChooseBankAdapter;->m(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static final V(Lteam/opay/pay/settings/ChooseBankAccountActivity;)Lteam/opay/pay/settings/ChooseBankAdapter;
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/pay/settings/ChooseBankAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->K()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lteam/opay/pay/settings/ChooseBankAccountActivity$mAdapter$2$1;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity$mAdapter$2$1;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/settings/ChooseBankAdapter;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static final W()Ljava/util/ArrayList;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final X(Lteam/opay/pay/settings/ChooseBankAccountActivity;)Lje;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lje;->inflate(Landroid/view/LayoutInflater;)Lje;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public final J()Lteam/opay/pay/settings/ChooseBankAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/ChooseBankAccountActivity;->h:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/settings/ChooseBankAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final K()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/settings/BankAccountInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/ChooseBankAccountActivity;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    return-object v0
.end method

.method public L()Lje;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/ChooseBankAccountActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lje;

    .line 8
    .line 9
    return-object v0
.end method

.method public final N(Lteam/opay/pay/settings/BankAccountInfo;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/settings/BankAccountInfo;->d()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "selectBankName"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const-string v1, "selectBankCode"

    .line 16
    .line 17
    invoke-virtual {p1}, Lteam/opay/pay/settings/BankAccountInfo;->a()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string v1, "selectBankIcon"

    .line 25
    .line 26
    invoke-virtual {p1}, Lteam/opay/pay/settings/BankAccountInfo;->b()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    const/16 p1, 0x2713

    .line 36
    .line 37
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->L()Lje;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/settings/Hilt_ChooseBankAccountActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/pay/settings/ChooseBankAccountActivity;->O()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
