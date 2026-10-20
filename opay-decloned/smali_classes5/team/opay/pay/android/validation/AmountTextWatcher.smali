.class public Lteam/opay/pay/android/validation/AmountTextWatcher;
.super Ljava/lang/Object;
.source "AmountTextWatcher.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\r\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J1\u0010\u0018\u001a\u00020\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J1\u0010\u001b\u001a\u00020\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0019J\r\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u001f\u0010 J1\u0010\"\u001a\u00020\u00082\u0008\u0010!\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\"\u0010\u0019R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\"\u0010(\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010\u000eR\u0016\u0010+\u001a\u00020)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010*R\u0014\u0010-\u001a\u00020\u001c8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\r\u0010,R\u0016\u00100\u001a\u00020.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010/R\u0016\u00101\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010$\u00a8\u00062"
    }
    d2 = {
        "Lteam/opay/pay/android/validation/AmountTextWatcher;",
        "Landroid/text/TextWatcher;",
        "Landroid/widget/EditText;",
        "editText",
        "<init>",
        "(Landroid/widget/EditText;)V",
        "",
        "max",
        "",
        "e",
        "(F)V",
        "",
        "amount",
        "d",
        "(Z)V",
        "Landroid/text/Editable;",
        "s",
        "afterTextChanged",
        "(Landroid/text/Editable;)V",
        "",
        "",
        "start",
        "count",
        "after",
        "beforeTextChanged",
        "(Ljava/lang/CharSequence;III)V",
        "before",
        "onTextChanged",
        "",
        "b",
        "()Ljava/lang/String;",
        "c",
        "()I",
        "text",
        "a",
        "Landroid/widget/EditText;",
        "Z",
        "getShouldStopChange",
        "()Z",
        "f",
        "shouldStopChange",
        "Ljava/text/DecimalFormat;",
        "Ljava/text/DecimalFormat;",
        "amountFormat",
        "Ljava/lang/String;",
        "separator",
        "Ljava/math/BigDecimal;",
        "Ljava/math/BigDecimal;",
        "maxAmount",
        "inputMoney",
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
.field public final a:Landroid/widget/EditText;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Z

.field public c:Ljava/text/DecimalFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Ljava/math/BigDecimal;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1
    .param p1    # Landroid/widget/EditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "editText"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/android/validation/AmountTextWatcher;->a:Landroid/widget/EditText;

    .line 10
    .line 11
    sget-object p1, Lbd9;->a:Lbd9;

    .line 12
    .line 13
    invoke-virtual {p1}, Lbd9;->g()Ljava/text/DecimalFormat;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lteam/opay/pay/android/validation/AmountTextWatcher;->c:Ljava/text/DecimalFormat;

    .line 18
    .line 19
    const-string p1, ","

    .line 20
    .line 21
    iput-object p1, p0, Lteam/opay/pay/android/validation/AmountTextWatcher;->d:Ljava/lang/String;

    .line 22
    .line 23
    new-instance p1, Ljava/math/BigDecimal;

    .line 24
    .line 25
    const-string v0, "999999"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lteam/opay/pay/android/validation/AmountTextWatcher;->e:Ljava/math/BigDecimal;

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lteam/opay/pay/android/validation/AmountTextWatcher;->f:Z

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;III)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v1, p4

    if-eqz v7, :cond_14

    .line 1
    invoke-static/range {p1 .. p1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_9

    .line 2
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-string v3, "."

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lez v2, :cond_8

    invoke-static {v7, v3, v9, v5, v4}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v6, 0x0

    :goto_0
    const/16 v10, 0x2e

    const/4 v11, -0x1

    if-ge v6, v2, :cond_2

    .line 4
    invoke-interface {v7, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-ne v12, v10, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, -0x1

    :goto_1
    if-nez v6, :cond_3

    .line 5
    iget-object v1, v0, Lteam/opay/pay/android/validation/AmountTextWatcher;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    return-void

    .line 6
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, v11

    if-ltz v2, :cond_6

    :goto_2
    add-int/lit8 v12, v2, -0x1

    .line 7
    invoke-interface {v7, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ne v13, v10, :cond_4

    move v11, v2

    goto :goto_3

    :cond_4
    if-gez v12, :cond_5

    goto :goto_3

    :cond_5
    move v2, v12

    goto :goto_2

    :cond_6
    :goto_3
    if-lez v11, :cond_7

    if-eq v11, v6, :cond_7

    .line 8
    iget-object v1, v0, Lteam/opay/pay/android/validation/AmountTextWatcher;->a:Landroid/widget/EditText;

    .line 9
    invoke-interface {v7, v9, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v1, v0, Lteam/opay/pay/android/validation/AmountTextWatcher;->a:Landroid/widget/EditText;

    invoke-static {v1}, Lpf5;->b(Landroid/widget/EditText;)V

    return-void

    .line 12
    :cond_7
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v8

    sub-int/2addr v2, v6

    if-le v2, v5, :cond_8

    .line 13
    iget-object v1, v0, Lteam/opay/pay/android/validation/AmountTextWatcher;->a:Landroid/widget/EditText;

    .line 14
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-interface {v7, v9, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v1, v0, Lteam/opay/pay/android/validation/AmountTextWatcher;->a:Landroid/widget/EditText;

    invoke-static {v1}, Lpf5;->b(Landroid/widget/EditText;)V

    return-void

    .line 17
    :cond_8
    invoke-static {v7, v3, v9, v5, v4}, Lkotlin/text/StringsKt;->a1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v7, v3, v9, v5, v4}, Lkotlin/text/StringsKt;->h0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    return-void

    .line 18
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, ","

    const-string v12, ""

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 19
    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/android/validation/AmountTextWatcher;->c()I

    move-result v10

    if-le v6, v10, :cond_b

    .line 20
    new-instance v1, Lkotlin/text/Regex;

    const-string v3, "\\d+\\.(0+)?"

    invoke-direct {v1, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 21
    const-string v2, "."

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    :goto_4
    sub-int/2addr v1, v8

    goto :goto_5

    .line 22
    :cond_a
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_4

    .line 23
    :goto_5
    iget-object v2, v0, Lteam/opay/pay/android/validation/AmountTextWatcher;->a:Landroid/widget/EditText;

    .line 24
    invoke-interface {v7, v9, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v1, v0, Lteam/opay/pay/android/validation/AmountTextWatcher;->a:Landroid/widget/EditText;

    invoke-static {v1}, Lpf5;->b(Landroid/widget/EditText;)V

    return-void

    .line 27
    :cond_b
    iget-boolean v6, v0, Lteam/opay/pay/android/validation/AmountTextWatcher;->b:Z

    if-eqz v6, :cond_c

    .line 28
    iput-boolean v9, v0, Lteam/opay/pay/android/validation/AmountTextWatcher;->b:Z

    return-void

    .line 29
    :cond_c
    iput-boolean v8, v0, Lteam/opay/pay/android/validation/AmountTextWatcher;->b:Z

    .line 30
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_d

    invoke-static {v2, v3, v9, v5, v4}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/16 v20, 0x6

    const/16 v21, 0x0

    .line 31
    const-string v17, "."

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    .line 32
    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v10, "substring(...)"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v2, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v3, v0, Lteam/opay/pay/android/validation/AmountTextWatcher;->c:Ljava/text/DecimalFormat;

    new-instance v10, Ljava/math/BigDecimal;

    invoke-direct {v10, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 35
    :cond_d
    iget-object v3, v0, Lteam/opay/pay/android/validation/AmountTextWatcher;->c:Ljava/text/DecimalFormat;

    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 36
    :goto_6
    iget-object v3, v0, Lteam/opay/pay/android/validation/AmountTextWatcher;->a:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_12

    if-eq v1, v8, :cond_e

    .line 37
    iget-object v1, v0, Lteam/opay/pay/android/validation/AmountTextWatcher;->a:Landroid/widget/EditText;

    invoke-static {v1}, Lpf5;->b(Landroid/widget/EditText;)V

    goto :goto_9

    .line 38
    :cond_e
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v8, :cond_f

    const-string v1, "0"

    invoke-static {v7, v1, v9, v5, v4}, Lkotlin/text/StringsKt;->a1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 39
    iget-object v1, v0, Lteam/opay/pay/android/validation/AmountTextWatcher;->a:Landroid/widget/EditText;

    invoke-static {v1}, Lpf5;->b(Landroid/widget/EditText;)V

    goto :goto_9

    .line 40
    :cond_f
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_10

    add-int/lit8 v1, p2, 0x2

    goto :goto_7

    :cond_10
    add-int/lit8 v1, p2, 0x1

    .line 41
    :goto_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v8

    if-gt v1, v3, :cond_11

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, v0, Lteam/opay/pay/android/validation/AmountTextWatcher;->d:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_11

    add-int/lit8 v1, v1, -0x1

    .line 42
    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v9, v2}, Lkotlin/ranges/c;->i(III)I

    move-result v1

    .line 43
    iget-object v2, v0, Lteam/opay/pay/android/validation/AmountTextWatcher;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_9

    .line 44
    :cond_12
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v1, v3, :cond_13

    add-int/lit8 v1, p2, -0x1

    goto :goto_8

    :cond_13
    move/from16 v1, p2

    .line 45
    :goto_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v9, v2}, Lkotlin/ranges/c;->i(III)I

    move-result v1

    .line 46
    iget-object v2, v0, Lteam/opay/pay/android/validation/AmountTextWatcher;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_14
    :goto_9
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "s"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/validation/AmountTextWatcher;->a:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lkotlin/text/Regex;

    .line 12
    .line 13
    iget-object v2, p0, Lteam/opay/pay/android/validation/AmountTextWatcher;->d:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v2, ""

    .line 19
    .line 20
    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public final c()I
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/validation/AmountTextWatcher;->e:Ljava/math/BigDecimal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/android/validation/AmountTextWatcher;->e:Ljava/math/BigDecimal;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-int/2addr v1, v0

    .line 26
    :goto_0
    return v1
.end method

.method public d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/android/validation/AmountTextWatcher;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public e(F)V
    .locals 1

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lteam/opay/pay/android/validation/AmountTextWatcher;->e:Ljava/math/BigDecimal;

    .line 11
    .line 12
    return-void
.end method

.method public final f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/android/validation/AmountTextWatcher;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/android/validation/AmountTextWatcher;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/pay/android/validation/AmountTextWatcher;->a(Ljava/lang/CharSequence;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    sget-object p2, Lx7b;->a:Lx7b;

    .line 11
    .line 12
    const-string p3, "text"

    .line 13
    .line 14
    invoke-static {p3, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 p3, 0x1

    .line 19
    new-array p3, p3, [Lkotlin/Pair;

    .line 20
    .line 21
    const/4 p4, 0x0

    .line 22
    aput-object p1, p3, p4

    .line 23
    .line 24
    const-string p1, "amount_watcher_format_error"

    .line 25
    .line 26
    invoke-virtual {p2, p1, p3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method
