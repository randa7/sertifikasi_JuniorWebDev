<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class UpdateUsers extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' =>'required',
            'password' => 'nullable',
            'role' => 'nullable',
            'email' => [
                Rule::unique('users', 'email')->ignore($this->route('pengguna')),
            ],
        ];
    }

    public function messages()
    {
        return [
            'name.required' => 'nama tidak boleh kosong',
            'email.required' => 'Email tidak boleh kosong',
            'email.unique' => 'Email telah digunakan pengguna lain',


        ];
    }
}
